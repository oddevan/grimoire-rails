module Tcgplayer
	class CardParser
		def initialize(raw_data)
			@raw = raw_data
			@parsed = {
				name: @raw['name'],
				product_id: @raw['productId'],
				image_url: @raw['imageUrl'],
			}

			parse_extended_info

			@has_card = !@parsed[:card_number].blank?

			if @has_card
				parse_printings
				parse_id_number
				parse_signature_info
			end
		end

		def has_card?
			@has_card
		end

		def hash_for_model(set_key: nil)
			{
				name: @parsed[:name],
				grimoire_id: set_key.nil? ? nil : "pkm-#{set_key}-#{@parsed[:id_number]}",
				tcgplayer_sku: @parsed[:sku],
				signature_data: JSON.generate(@parsed[:sig_info]),
				sequence: @parsed[:sequence],
				image_url: @parsed[:image_url],
				tcgplayer_product: @parsed[:product_id],
			}
		end

		def has_alt?
			!@parsed[:parallel_sku].nil?
		end

		def alt_hash_for_model(set_key: nil)
			alt_hash = hash_for_model(set_key: set_key)
	
			alt_hash[:name] << " (Reverse Holo)"
			alt_hash[:grimoire_id] << "-r" unless set_key.nil?
			alt_hash[:tcgplayer_sku] = @parsed[:parallel_sku]
			alt_hash[:sequence] << "r"

			alt_hash
		end

		private

		def parse_extended_info
			@raw['extendedData'].each do |edat|
				case edat['name']
				when 'Number'
					parse_card_number edat['value']
				when /\AAttack \d+\z/
					parse_attack edat['value']
				when 'Card Type'
					@parsed[:type] = get_type edat['value']
				when 'CardText'
					@parsed[:text] = edat['value']
				end
			end
		end

		def parse_card_number(raw_card_number)
			card_number = raw_card_number.downcase.strip
			if card_number.include? '/'
				card_number.slice!(card_number.index('/'), card_number.length)
			end
			card_number.match(/([a-z]+)0+([1-9]+)/) do |matches|
				return if matches.nil?
				card_number = matches[1] + matches [2]
			end
			card_number.gsub!(/^0+/,'')
			@parsed[:card_number] = card_number
		end

		def parse_attack(raw_text)
			stripped_text = ActionController::Base.helpers.strip_tags raw_text
			stripped_text.match(/\[([0-9A-Z]+)\+?\]\s((\w+\s)+)(\(([0-9x]+)\+?\))?/) do |matches|
				return if matches.nil?
				@parsed[:attacks] = [] if @parsed[:attacks].nil?

				text_index = stripped_text.index("\n")

				@parsed[:attacks] << {
					:cost => matches[1] || 0,
					:name => matches[2] || '',
					:base_damage => matches[5] || 0,
					# Leave text off for now
					# :text => text_index ? stripped_text[text_index + 1, stripped_text.length] : '',
				}
			end
		end

		# TCGplayer has a tendency to use "Trainer" for some printings and "Supporter" for others.
		def get_type(raw_type)
			trainers = ["Supporter", "Item", "Stadium"]

			return "Trainer" if trainers.include? raw_type

			return raw_type
		end

		######################

		def parse_printings
			printings = @raw['skus'].select { |sku| sku['languageId'] === 1 && sku['conditionId'] === 1 }
			printings.each do |printing|
				if 77 == printing['printingId']
					@parsed[:parallel_sku] = printing['skuId']
				else
					@parsed[:sku] = printing['skuId']
				end
			end
		end

		######################

		def parse_id_number
			id_number = @parsed[:card_number].clone

			if (@raw['name'].end_with?(" [Staff]"))
				id_number << "-s"
			end

			@parsed[:id_number] = id_number.clone
			
			matches = id_number.match /\A([a-z]*)(\d+)-*([a-z]*)\z/

			@parsed[:sequence] = matches[1] + matches[2].rjust(3, '0') + matches[3]
		end

		######################

		def parse_signature_info
			@parsed[:sig_info] = {
				name: normalize_title(@raw['name']),
				type: @parsed[:type],
				data: @parsed[:attacks] || @parsed[:text] || "",
			}
		end

		def normalize_title(raw_title)
			clean_title = raw_title.clone
			if (clean_title.include? ' (')
				# Replace any text inside (these) or [these] with nothing
				clean_title.slice!(clean_title.index(' ('), clean_title.length)
			end
			if clean_title.include? ' -'
				# Chop off anything like ' - SWSH0001'
				clean_title.slice!(clean_title.index(' -'), clean_title.length)
			end
			clean_title
		end

	end
end
module Tcgplayer
	class CardParser
		def initialize(raw_data)
			@raw = raw_data
			@parsed = Hash.new
		end

		def hash_for_model

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
					@parsed[:type] = edat['value']
				when
					@parsed[:text] = edat['value']
				end
			end
		end

		def parse_card_number(raw_card_number)
			card_number = parse_sequence(raw_card_number)
			card_number.match(/([a-z]+)0+([1-9]+)/) do |matches|
				return if matches.nil?
				card_number = matches[1] + matches [2]
			end
			card_number.gsub!(/^0+/,'')
			@parsed[:card_number] = card_number
		end

		def parse_sequence(raw_card_number)
			card_number = raw_card_number.downcase.strip
			if card_number.include? '/'
				card_number.slice!(card_number.index('/'), card_number.length)
			end
			@parsed[:sequence] = card_number
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
					:text => text_index ? stripped_text[text_index + 1, stripped_text.length] : '',
				}
			end
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


		end
	end
end
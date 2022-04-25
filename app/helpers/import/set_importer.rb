module Import
	class SetImporter
		# Required interfaces:
		#   fetcher.cards_from_set(set_id, quantity:, offset:)
		#   parser_class.new(card_data).hash_for_model
		#   model_class.new(hash_for_model).save
		def initialize(fetcher:, parser_class:, model_class:)
			if !fetcher.respond_to?(:cards_from_set)
				raise ArgumentError, "Fetcher needs to respond to :cards_from_set"
			end

			@fetcher = fetcher
			@parser_class = parser_class
			@model_class = model_class
		end

		def import_set(set_id, prefix: nil, get_all: false, batch_quantity: 100)
			if !set_id || !prefix
				raise ArgumentError, "Set ID and prefix are required"
			end

			batch_offset = 0
			card_batch = @fetcher.cards_from_set set_id, quantity: batch_quantity
			while (card_batch.any?)
				card_batch.each do |card|
					parser = @parser_class.new(card)
					model = @model_class.new(parser.hash_for_model)
					model.save
				end

				batch_offset += batch_quantity
				card_batch = @fetcher.cards_from_set set_id, quantity: batch_quantity, offset: batch_offset
			end
		end
	end
end
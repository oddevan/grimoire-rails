module Import
	class SetImporter
		def initialize(fetcher)
			if !fetcher.respond_to?(:cards_from_set)
				raise ArgumentError, "Fetcher needs to respond to :cards_from_set"
			end

			@fetcher = fetcher
		end

		def import_set(set_id, prefix: nil, get_all: false, batch_quantity: 100)
			if !set_id || !prefix
				raise ArgumentError, "Set ID and prefix are required"
			end

			batch_offset = 0
			card_batch = @fetcher.cards_from_set set_id, quantity: batch_quantity
			while (card_batch.any?)
				card_batch.each do |card|
					#import card
				end

				batch_offset += batch_quantity
				begin
					card_batch = @fetcher.cards_from_set set_id, quantity: batch_quantity, offset: batch_offset
				rescue TcgplayerException => e
					# If it's a 404 error here, that just means there's none left. Move along.
					raise unless e.http_response.code == 404
					card_batch = []
				end
			end
		end
	end
end
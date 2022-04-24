module Import
	class SetImporter
		def initialize(fetcher)
			if !fetcher.responds_to?(:cards_from_set)
				raise ArgumentError, "Fetcher needs to respond to :cards_from_set"
			end

			@fetcher = fetcher
		end

		def import_set(set_id, prefix: nil, get_all: false)
			
		end
	end
end
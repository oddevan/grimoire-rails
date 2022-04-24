namespace :printings do
	# No idea if this works yet!
	desc "Fetch the latest market prices for all printings"
	task market: [:environment] do
    helper = TcgplayerHelper.new

		Printing.find_in_batches(batch_size: 50) do |printings|
			results = helper.prices_for_skus(printings.map { |p| p.tcgplayer_sku })
			results.each do |info|
				card = Printing.find_by_tcgplayer_sku(info['skuId'])
				card.market = info['marketPrice']
				card.save
			end
		end
	end
end

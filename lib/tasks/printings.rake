namespace :printings do
	# No idea if this works yet!
	desc "Fetch the latest market prices for all printings"
	task market: [:environment] do
    helper = Tcgplayer::ApiClient.new

		Printing.find_in_batches(batch_size: 50) do |printings|
			results = helper.prices_for_skus(printings.map { |p| p.tcgplayer_sku })
			results.each do |info|
				card = Printing.find_by_tcgplayer_sku(info['skuId'])
				card.market_price = info['marketPrice']
				card.save
			end
		end
	end

	task promote: [:environment] do
		puts "Promoting #{StagingPrinting.count} cards from staging..."
		old_count = Printing.count

		StagingPrinting.all.each do |card|
			newbie = Printing.create(
				name: card.name,
				grimoire_id: card.grimoire_id,
				tcgplayer_sku: card.tcgplayer_sku,
				card_set_id: card.card_set_id,
				signature_data: card.signature_data,
				sequence: card.sequence,
				image_url: card.image_url,
				tcgplayer_product: card.tcgplayer_product,
			)
			if newbie.id
				card.destroy
			end
		end

		puts "Results: #{Printing.count - old_count} cards promoted"

		if (StagingPrinting.exists?)
			puts "#{StagingPrinting.count} cards still in staging:"
			StagingPrinting.all.each do |card|
				puts "#{card.id.to_s.rjust(3)} #{card.name.ljust(25)} #{card.grimoire_id}"
			end
		end
	end
end

class PrintingsController < ApplicationApiController
	def all_ids
		printings = Printing.select "grimoire_id"
		render json: printings.map { |p| p.grimoire_id }
	end

	def show
		printing = Printing.find_by_grimoire_id(params.require(:id))
		alts = Printing.where(signature: printing.signature).where.not(grimoire_id: printing.grimoire_id)

		card = {
			id: printing.grimoire_id,
			name: printing.name,
			imgUrl: printing.image_url,
			setName: printing.card_set.name,
			setSlug: printing.card_set.slug,
			hash: printing.signature,
			printings: alts.map do |alt|
				{
					id: alt.grimoire_id,
					name: alt.name,
					setName: alt.card_set.name,
				}
			end
		}

		render json: card
	end

	def by_set
		set = CardSet.find_by_slug(params.require(:id))
		cards = Printing.where(card_set: set).map do |card|
			{
				id: card.grimoire_id,
				name: card.name
			}
		end

		render json: cards
	end

	def price
		printing = Printing.find_by_grimoire_id(params.require(:id))

		render json: { id: printing.grimoire_id, price: printing.market_price }
	end

	def link
		printing = Printing.find_by_grimoire_id(params.require(:id))

		render json: {
			id: printing.grimoire_id,
			link: "https://www.tcgplayer.com/product/#{printing.tcgplayer_product}?utm_campaign=affiliate&utm_medium=oddEvan&utm_source=oddEvan"
		}
	end
end

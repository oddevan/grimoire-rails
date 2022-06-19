class PrintingsController < ApplicationController
	def all_ids
		printings = Printing.select "grimoire_id"
		render json: printings.map { |p| p.grimoire_id }
	end

	def show
		printing = Printing.find_by_grimoire_id(params.require(:grimoire_id))
		alts = Printing.where(signature: printing.signature).where.not(grimoire_id: printing.grimoire_id)

		card = {
			id: printing.grimoire_id,
			name: printing.name,
			imgUrl: printing.image_url,
			setName: printing.card_set.name,
			setSlug: printing.card_set.slug,
			hash: printing.signature,
			price: printing.market_price,
			printings: alts.map { |alt| {
				id: alt.grimoire_id,
				name: alt.name,
				setName: alt.card_set.name,
			} }
		}

		render json: card
	end
end

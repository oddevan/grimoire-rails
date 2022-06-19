class CardSetsController < ApplicationController
	def all_slugs
		sets = CardSet.select "slug"
		render json: sets.map { |p| p.slug }
	end
end

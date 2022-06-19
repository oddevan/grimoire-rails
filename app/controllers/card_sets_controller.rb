class CardSetsController < ApplicationController
	def all_slugs
		sets = CardSet.select "slug"
		render json: sets.map { |s| s.slug }
	end

	def index
		sets = CardSet.all
		render json: sets.map { |s| {
			name: s.name,
			slug: s.slug,
			release_date: s.release_date,
			code: s.code,
			guru_id: s.guru_id,
		} }
	end

	def show
		set = CardSet.find_by_slug(params.require(:slug))
		render json: {
			name: set.name,
			slug: set.slug,
			release_date: set.release_date,
			code: set.code,
			guru_id: set.guru_id,
		}
	end
end

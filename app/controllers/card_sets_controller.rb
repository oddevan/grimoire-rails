class CardSetsController < ApplicationApiController
	def all_slugs
		sets = CardSet.select "slug"
		render json: sets.map { |s| s.slug }
	end

	def index
		sets = CardSet.all
		render json: sets.map do |set|
			{
				name: set.name,
				slug: set.slug,
				release_date: set.release_date,
				code: set.code,
				guru_id: set.guru_id,
			}
		end
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

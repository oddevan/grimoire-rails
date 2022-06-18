class PrintingsController < ApplicationController
	def all_ids
		ids = Printing.select "grimoire_id"
		render json: ids.map { |p| p.grimoire_id }
	end
end

class PrintingsController < ApplicationController
	def all_ids
		printings = Printing.select "grimoire_id"
		render json: printings.map { |p| p.grimoire_id }
	end
end

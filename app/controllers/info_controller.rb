class InfoController < ApplicationApiController
	def index
		render json: {
			version: 2.0,
			printings: Printing.count,
			staging: StagingPrinting.count,
			user: current_user.nil? ? "*anonymous" : current_user.username
		}
	end
end

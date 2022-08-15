class InfoController < ApplicationApiController
	before_action :doorkeeper_authorize!, except: [:index]

	def index
		render json: {
			version: 2.0,
			printings: Printing.count,
			staging: StagingPrinting.count,
			user: current_user.nil? ? "*anonymous" : current_user.username
		}
	end

	def me
		render json: {
			username: current_user.username,
			displayName: current_user.display_name
		}
	end
end

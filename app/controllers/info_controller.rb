class InfoController < ApplicationApiController
	before_action :doorkeeper_authorize!, except: [:index]

	def index
		render json: {
			version: 2.0,
			printings: Printing.count,
			staging: StagingPrinting.count,
			user: current_resource_owner.nil? ? "*anonymous" : current_resource_owner.username
		}
	end

	def me
		render json: {
			username: current_resource_owner.username,
			displayName: current_resource_owner.display_name
		}
	end
end

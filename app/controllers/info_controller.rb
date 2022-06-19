class InfoController < ApplicationController
	def index
		render json: {
			version: 1.0,
			printings: Printing.count,
			staging: StagingPrinting.count,
		}
	end
end

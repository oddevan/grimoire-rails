class UsersController < ApplicationController
  before_action :authenticate_user!
	
	def show
		render json: current_user
	end

	def update
		if current_user.update_attributes(user_params)
			render json: current_user
		else
			render json: { errors: current_user.errors }, status: :unprocessable_entity
		end
	end

	private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
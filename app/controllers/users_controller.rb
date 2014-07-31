class UsersController < ApplicationController
	skip_before_action :is_admin

	def index
		@users = User.order(:login)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to action: :show, id: @user.id
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to action: :show, id: @user.id
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:login, :email ,:password, :password_confirmation)
		end
end

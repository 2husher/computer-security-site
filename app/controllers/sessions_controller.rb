class SessionsController < ApplicationController
	skip_before_action :is_admin

	def new
	end

	def create
		current_user = User.find_by_email(params[:email])

		if current_user && current_user.authenticate(params[:password])
			session[:id] = current_user.id
			redirect_to user_path(current_user)
		else
			render 'new'
		end
	end

	def destroy
		session[:id] = nil
		redirect_to landpage_home_path
	end
end

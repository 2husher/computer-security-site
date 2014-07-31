class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :is_admin

  private
  	
  	def is_admin
  		redirect_to landpage_home_path
  	end
end

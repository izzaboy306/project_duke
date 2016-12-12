class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
  	stored_location_for(resource) || home_path
	end

	protected
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    		user_params.permit(:email, :password, :password_confirmation, :admin)
    	end
	  end
end

class Users::RegistrationsController < Devise::RegistrationsController
before_action :authenticate_user!
	
  def new
    flash[:info] = 'Registrations are not open yet, but please check back soon.'
    redirect_to root_path
  end

  def create
    flash[:info] = 'Registrations are not open yet, but please check back soon.'
    redirect_to root_path
  end
end
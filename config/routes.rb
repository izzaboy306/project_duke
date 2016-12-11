Rails.application.routes.draw do
  devise_scope :user do
  	root to: "devise/sessions#new"
	end

  if Rails.env.production? || Rails.env.development?
    devise_for :users, :controllers => { :registrations => "users/registrations" } 
  else
    devise_for :users
  end

  get 'home', to: 'pages#home'
end
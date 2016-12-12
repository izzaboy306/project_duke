Rails.application.routes.draw do
  devise_scope :user do
  	root to: "devise/sessions#new"
	end

  if Rails.env.production?
    devise_for :users, :controllers => { :registrations => "users/registrations" } 
  else
    devise_for :users
  end

  resources :users do
  	resource :profile
	end

  get 'home', to: 'pages#home'
  get 'customers', to: 'pages#customers'
  get 'vendors', to: 'pages#vendors'
  get 'reports', to: 'pages#reports'
  get 'admin', to: 'admin#home'
end
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :charges
  resources :purchases, only: [:show]
  resources :products, only: [:index, :show]
  default_url_options :host => "sleepy-depths-28016.herokuapp.com"
end

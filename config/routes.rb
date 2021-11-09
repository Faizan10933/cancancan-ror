Rails.application.routes.draw do
  resources :post1s
  resources :posts
  #get 'home/index'
  root 'home#index'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

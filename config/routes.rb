Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'

  resources :promises
  resources :updates
  resources :wishlists
  resources :bank_accounts
  resources :backers
  resources :creators
  resources :backed_projects
  resources :created_projects
  resources :packages
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

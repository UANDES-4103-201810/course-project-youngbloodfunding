Rails.application.routes.draw do
  resources :promises
  resources :updates
  resources :wishlists
  resources :bank_accounts
  resources :users
  resources :backers
  resources :creators
  resources :backed_projects
  resources :created_projects
  resources :packages
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

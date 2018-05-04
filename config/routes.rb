Rails.application.routes.draw do
  get 'users/index'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',       via: 'get', as: 'profile'
  match '/users/:id/contributions',   to: 'users#contributions',   via:  'get',  as: 'contributions'
  match '/users/:id/campaigns',   to: 'users#campaigns',   via:  'get',  as: 'campaigns'
  match '/users/:id/wishlists',   to: 'users#wishlists',   via:  'get',  as: 'wishlists'
  root 'home#index'
  get 'home/index'

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

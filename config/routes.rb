Rails.application.routes.draw do
  resources :categories
  get 'users/index'

  devise_for :users, :path_prefix => 'd', omniauth_callbacks: 'callbacks'


  resources :users, :only =>[:show]

  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',       via: 'get', as: 'profile'
  match '/users/:id/contributions',   to: 'users#contributions',   via:  'get',  as: 'contributions'
  match '/users/:id/campaigns',   to: 'users#campaigns',   via:  'get',  as: 'campaigns'
  match '/users/:id/u_wishlists',   to: 'users#u_wishlists',   via:  'get',  as: 'u_wishlists'
  match '/admin', to: 'users#admin', via: 'get', as: 'admin'

  root 'home#index'
  get 'home/index'

  resources :promises
  resources :updates
  resources :wishlists
  resources :bank_accounts
  resources :backed_projects
  resources :packages
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  resources :restaurants
  root to: 'home#index'
end

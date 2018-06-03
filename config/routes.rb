Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:show, :index]
  get 'users/:id' => 'users#show'
  get 'users/handle/:handle' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  resources :restaurants
  resources :groups
  resources :group_orders
  root to: 'home#index'
end

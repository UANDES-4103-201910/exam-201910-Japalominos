Rails.application.routes.draw do
  devise_for :users
  get 'home/index(/:Search)', to: "home#index"
  get 'home/search'
  resources :addresses
  resources :products
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

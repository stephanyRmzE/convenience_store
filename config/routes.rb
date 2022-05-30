Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  resources :categories, only: [:index, :show]
  resources :products, only: [:index]

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  resources :charges, only: [:new, :create]
end

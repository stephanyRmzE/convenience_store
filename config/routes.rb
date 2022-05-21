Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'categories#index'

  resources :categories, only: [:index, :show]
  resources :products, only: [:index]

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
end

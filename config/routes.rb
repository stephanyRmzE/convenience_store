Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  resources :users, only: [:show, :destroy, :edit, :update]
  resources :categories, only: [:index, :show]
  resources :products, only: [:index]

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  post "charges/create", to: "charges#create"
  get 'success', to: 'charges#success', as: 'success'
  get 'cancel', to: 'charges#cancel', as: 'cancel'
end

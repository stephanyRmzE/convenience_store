Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  resources :users, only: [:show, :destroy, :edit, :update]
  resources :categories, only: [:index, :show]
  resources :products, only: [:index]

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'
end

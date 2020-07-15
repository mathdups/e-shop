Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  namespace :admin do
    resources :products
    resources :orders
    get 'orders', to: 'orders#index'
    root 'products#index'
  end
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders
  resources :users
  get    'cart',     to: 'cart#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

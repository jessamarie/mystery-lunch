Rails.application.routes.draw do

  root to: 'restaurant_profiles#index'

  # devise_for :restaurants
  devise_for :customers

  devise_for :restaurants, controllers: {
      registrations: 'restaurants/registrations'
  }

  resources :restaurant_profiles do
    resources :menu_items, except: [:index, :show]
  end

  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders, except: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end

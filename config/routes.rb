Rails.application.routes.draw do

  devise_for :restaurants
  devise_for :customers

  root to: 'restaurant_profiles#index'

  resources :restaurant_profiles
end

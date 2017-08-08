Rails.application.routes.draw do

  # devise_for :restaurants
  devise_for :customers

  devise_for :restaurants, controllers: {
      registrations: 'restaurants/registrations'
  }

  root to: 'restaurant_profiles#index'


  resources :restaurant_profiles do
    resources :menu_items
  end
end

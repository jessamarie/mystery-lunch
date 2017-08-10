class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart
  helper_method :current_cart
  helper_method :profile

  private
    def set_cart
      @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    def current_cart
      if !session[:cart_id].nil?
        Cart.find(session[:cart_id])
      end
    end

    def profile
      if current_customer
        # CustomerProfile.find_by(customer: current_customer.id)
      elsif current_restaurant
        RestaurantProfile.find_by(restaurant: current_restaurant.id)
      end
    end

end

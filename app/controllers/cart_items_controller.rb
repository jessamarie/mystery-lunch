class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :update, :destroy]
  before_action :set_cart_item, only: [:update, :destroy]

  def create
    @cart.add_menu_item(params)
    @restaurant_profile = MenuItem.find(params[:menu_item][:menu_item_id]).restaurant_profile

    if @cart.save
      redirect_to restaurant_profile_path(@restaurant_profile)
    else
      flash[:alert] = "Could not add item to cart"
      redirect_to restaurant_profile_path(@restaurant_profile)
    end
  end

  def update
    if @cart_item.update(cart_item_params)
        redirect_to cart_path
    else
        redirect_to cart_path
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to cart_path
  end

  private
    def current_cart
      @current_cart = Cart.find(session[:cart_id])
    end

    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
      params.require(:cart_item).permit(:menu_item_id, :cart_id)
    end
end

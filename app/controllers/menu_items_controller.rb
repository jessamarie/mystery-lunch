class MenuItemsController < ApplicationController
  before_action :set_restaurant_profile
  before_action :set_menu_item, only: [:edit, :update, :destroy]

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = @restaurant_profile.menu_items.create!(menu_item_params)
    flash[:notice] = "Menu item was successfully created."
    redirect_to restaurant_profile_path(@restaurant_profile)
  end

  def edit
  end

  def update
    @menu_item.update(menu_item_params)
    flash[:notice] = "menu item was updated."
    redirect_to restaurant_profile_path(@restaurant_profile)
  end

  def destroy
    @menu_item.destroy
    redirect_to restaurant_profile_path(@restaurant_profile)
  end

  private
    def set_menu_item
      @menu_item = @restaurant_profile.menu_items.find(params[:id])
    end

    def set_restaurant_profile
      @restaurant_profile = RestaurantProfile.find(params[:restaurant_profile_id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:name)
    end
end

class RestaurantProfilesController < ApplicationController
  before_action :set_restaurant_profile, only: [:show, :edit, :update, :destroy]

  def index
    @restaurant_profiles = RestaurantProfile.all
  end

  def show
    @menu_item = @restaurant_profile.menu_items.all.sample
  end

  def new
    @restaurant_profile = RestaurantProfile.new
  end

  def edit
  end

  def create
    # If we merge the restaurant in with our profile params, we can create the
    # profile in one action
    @restaurant_profile = RestaurantProfile.create!(restaurant_profile_params.merge({
      restaurant: current_restaurant
      }))
    # @restaurant_profile.restaurant = current_restaurant
    flash[:notice] = "Profile was successfully created."
    redirect_to restaurant_profile_path(@restaurant_profile)
  end

  def update
    @restaurant_profile.update(restaurant_profile_params)
    flash[:notice] = "profile was updated."
    redirect_to restaurant_profile_path(@restaurant_profile)
  end

  def destroy
    @restaurant_profile.destroy
    @restaurant_profile.restaurant.destroy
    flash[:notice] = "user was successfully destroyed."
    redirect_to restaurant_profiles_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_profile
      @restaurant_profile = RestaurantProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_profile_params
      params.require(:restaurant_profile).permit(:name, :address, :description)
    end
end

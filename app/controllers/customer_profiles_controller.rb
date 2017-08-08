class CustomerProfilesController < ApplicationController
  before_action :set_customer_profile, only: [:show, :edit, :update, :destroy]

  def index
    @customer_profiles = CustomerProfile.all
  end

  def show
  end

  def new
    @customer_profile = CustomerProfile.new
  end

  def edit
  end

  def create
    @customer_profile = CustomerProfile.create!(customer_profile_params)
    @customer_profile.customer = current_customer
    flash[:notice] = "Profile was successfully created."
    redirect_to customer_profile_path(@customer_profile)
  end

  def update
    @restaurant_profile.update(restaurant_profile_params)
    flash[:notice] = "profile was updated."
    redirect_to customer_profile_path(@customer_profile)
  end

  def destroy
    @customer_profile.destroy
    @customer_profile.customer.destroy
    flash[:notice] = "user was successfully destroyed."
    redirect_to customer_profiles_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_profile
      @customer_profile = CustomerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_profile_params
      params.require(:customer_profile).permit(:firstname, :lastname, :about, :interests)
    end
end

class RestaurantProfilesController < ApplicationController
  before_action :set_restaurant_profile, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_profiles
  # GET /restaurant_profiles.json
  def index
    @restaurant_profiles = RestaurantProfile.all
  end

  # GET /restaurant_profiles/1
  # GET /restaurant_profiles/1.json
  def show
  end

  # GET /restaurant_profiles/new
  def new
    @restaurant_profile = RestaurantProfile.new
  end

  # GET /restaurant_profiles/1/edit
  def edit
  end

  # POST /restaurant_profiles
  # POST /restaurant_profiles.json
  def create
    @restaurant_profile = RestaurantProfile.new(restaurant_profile_params)
    @restaurant_profile.restaurant = current_restaurant

    respond_to do |format|
      if @restaurant_profile.save
        format.html { redirect_to @restaurant_profile, notice: 'Restaurant profile was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_profile }
      else
        format.html { render :new }
        format.json { render json: @restaurant_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_profiles/1
  # PATCH/PUT /restaurant_profiles/1.json
  def update
    respond_to do |format|
      if @restaurant_profile.update(restaurant_profile_params)
        format.html { redirect_to @restaurant_profile, notice: 'Restaurant profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_profile }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_profiles/1
  # DELETE /restaurant_profiles/1.json
  def destroy
    @restaurant_profile.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_profiles_url, notice: 'Restaurant profile was successfully destroyed.' }
      format.json { head :no_content }
    end
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

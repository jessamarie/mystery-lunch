require 'test_helper'

class RestaurantProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_profile = restaurant_profiles(:one)
  end

  test "should get index" do
    get restaurant_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_profile_url
    assert_response :success
  end

  test "should create restaurant_profile" do
    assert_difference('RestaurantProfile.count') do
      post restaurant_profiles_url, params: { restaurant_profile: {  } }
    end

    assert_redirected_to restaurant_profile_url(RestaurantProfile.last)
  end

  test "should show restaurant_profile" do
    get restaurant_profile_url(@restaurant_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_profile_url(@restaurant_profile)
    assert_response :success
  end

  test "should update restaurant_profile" do
    patch restaurant_profile_url(@restaurant_profile), params: { restaurant_profile: {  } }
    assert_redirected_to restaurant_profile_url(@restaurant_profile)
  end

  test "should destroy restaurant_profile" do
    assert_difference('RestaurantProfile.count', -1) do
      delete restaurant_profile_url(@restaurant_profile)
    end

    assert_redirected_to restaurant_profiles_url
  end
end

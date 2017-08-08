require 'test_helper'

class CustomerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_profile = customer_profiles(:one)
  end

  test "should get index" do
    get customer_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_profile_url
    assert_response :success
  end

  test "should create customer_profile" do
    assert_difference('CustomerProfile.count') do
      post customer_profiles_url, params: { customer_profile: {  } }
    end

    assert_redirected_to customer_profile_url(CustomerProfile.last)
  end

  test "should show customer_profile" do
    get customer_profile_url(@customer_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_profile_url(@customer_profile)
    assert_response :success
  end

  test "should update customer_profile" do
    patch customer_profile_url(@customer_profile), params: { customer_profile: {  } }
    assert_redirected_to customer_profile_url(@customer_profile)
  end

  test "should destroy customer_profile" do
    assert_difference('CustomerProfile.count', -1) do
      delete customer_profile_url(@customer_profile)
    end

    assert_redirected_to customer_profiles_url
  end
end

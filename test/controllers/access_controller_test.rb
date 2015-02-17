require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get verification" do
    get :verification
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end

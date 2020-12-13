require 'test_helper'

class WeightsControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::IntegrationHelpers

  #Creates a weight 
  #Signs in user so tests can run
  setup do
    get "/users/sign_in"
    @weight = weights(:one)
    sign_in users(:one)
    post user_session_url
  end

  test "should get index" do
    get weights_url
    assert_response :success

    assert_select 'h2', 'Your Weight'
    assert_select 'li', 'Weight Log'
    assert_template layout: 'application'
    assert_template partial: '_header'
    assert_template partial: '_footer'
  end

  test "should get new" do
    get new_weight_url
    assert_response :success

    assert_select 'h1', 'New Weight'
    assert_template layout: 'application'
    assert_template partial: '_header'
    assert_template partial: '_footer'
  end

  test "should create weight" do
    assert_difference('Weight.count') do
      post weights_url, params: { weight: { date: @weight.date, weight: @weight.weight } }
    end

    assert_redirected_to weight_url(Weight.last)
  end

  test "should show weight" do
    get weight_url(@weight)
    assert_response :success
    
    assert_template layout: 'application'
    assert_template partial: '_header'
    assert_template partial: '_footer'
  end

  test "should get edit" do
    get edit_weight_url(@weight)
    assert_response :success

    assert_select 'h1', 'Editing Weight'
    assert_template layout: 'application'
    assert_template partial: '_header'
    assert_template partial: '_footer'
  end

  test "should update weight" do
    patch weight_url(@weight), params: { weight: { date: @weight.date, weight: @weight.weight } }
    assert_redirected_to weight_url(@weight)
  end

  test "should destroy weight" do
    assert_difference('Weight.count', -1) do
      delete weight_url(@weight)
    end

    assert_redirected_to weights_url
  end

  test "should redirect to login if not logged in" do
    delete destroy_user_session_url

    get weights_url
    assert_redirected_to new_user_session_url
  end

end

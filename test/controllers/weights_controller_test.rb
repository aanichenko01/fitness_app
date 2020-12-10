require 'test_helper'

class WeightsControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::IntegrationHelpers

  #Creates a weight 
  #Signs in user so tests can run
  setup do
    get '/users/sign_in'
    @weight = weights(:one)
    sign_in users(:one)
    post user_session_url
  end

  test "should get index" do
    get weights_url
    assert_response :success

    assert_select 'h2', 'Your Weight'
    assert_select 'li', 'Weight Log'
  end

  test "should get new" do
    get new_weight_url
    assert_response :success

    assert_select 'h1', 'New Weight'
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
  end

  test "should get edit" do
    get edit_weight_url(@weight)
    assert_response :success

    assert_select 'h1', 'Editing Weight'
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
end

require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::IntegrationHelpers

  #Creates a workout
  #Signs in user so tests can run
  setup do
    get '/users/sign_in'
    @workout = workouts(:one)
    sign_in users(:one)
    post user_session_url
  end

  test "should get index" do
    get workouts_url
    assert_response :success
    assert_template layout: 'application'

    assert_select 'h2', 'Your Workouts'
    assert_select 'li', 'Workout Log'
  end

  test "should get new" do
    get new_workout_url
    assert_response :success

    assert_select 'h1', 'New Workout'
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { calories: @workout.calories, date: @workout.date, duration: @workout.duration, workout_type: @workout.workout_type } }
    end

    assert_redirected_to workout_url(Workout.last)
  end

  test "should show workout" do
    get workout_url(@workout)
    assert_response :success
    assert_template layout: 'application'
  end

  test "should get edit" do
    get edit_workout_url(@workout)
    assert_response :success

    assert_select 'h1', 'Editing Workout'
  end

  test "should update workout" do
    patch workout_url(@workout), params: { workout: { calories: @workout.calories, date: @workout.date, duration: @workout.duration, workout_type: @workout.workout_type } }
    assert_redirected_to workout_url(@workout)
  end

  test "should destroy workout" do
    assert_difference('Workout.count', -1) do
      delete workout_url(@workout)
    end

    assert_redirected_to workouts_url
  end
end
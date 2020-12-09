require 'test_helper'

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    @exercise = exercises(:one)
    @workout = workouts(:one)
    sign_in users(:one)
    post user_session_url
  end

  test "should get new" do
    get new_exercise_url(workout_id: @exercise.workout_id)
    assert_response :success
  end

  test "should create exercise" do
    assert_difference('Exercise.count') do
      post exercises_url, params: { exercise: { reps: @exercise.reps, sets: @exercise.sets, title: @exercise.title, workout_id: @exercise.workout_id } }
    end

    assert_redirected_to exercise_url(Exercise.last)
  end

  test "should get edit" do
    get edit_exercise_url(@exercise)
    assert_response :success
  end

  test "should update exercise" do
    patch exercise_url(@exercise), params: { exercise: { reps: @exercise.reps, sets: @exercise.sets, title: @exercise.title, workout_id: @exercise.workout_id } }
    assert_redirected_to exercise_url(@exercise)
  end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete exercise_url(@exercise)
    end

    assert_redirected_to exercises_url
  end
end

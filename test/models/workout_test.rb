require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  
  #Creates a user to associate workout to
  setup do
    @user = users(:one)
  end

  test 'should not save empty workout' do
    workout = Workout.new

    workout.save
    refute workout.valid?
  end

  test 'should save valid workout' do
    workout = Workout.new

    workout.date = 2001-01-01
    workout.workout_type = 'Cardio'
    workout.duration = 41
    workout.calories = 100
    workout.user = @user

    workout.save
    assert workout.valid?
  end

  test 'should not save workout without date' do
    workout = Workout.new

    workout.workout_type = 'Cardio'
    workout.duration = 41
    workout.calories = 100
    workout.user = @user

    workout.save
    refute workout.valid?
  end

  test 'should not save workout without workout type' do
    workout = Workout.new

    workout.date = 2001-01-01
    workout.duration = 41
    workout.calories = 100
    workout.user = @user

    workout.save
    refute workout.valid?
  end

  test 'should not save workout without duration' do
    workout = Workout.new

    workout.date = 2001-01-01
    workout.workout_type = 'Cardio'
    workout.calories = 100
    workout.user = @user

    workout.save
    refute workout.valid?
  end

  test 'should not save workout without user' do
    workout = Workout.new

    workout.date = 2001-01-01
    workout.workout_type = 'Cardio'
    workout.duration = 41
    workout.calories = 100

    workout.save
    refute workout.valid?
  end

end

require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
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
    workout.calories = 1

    workout.save
    assert workout.valid?
  end
end
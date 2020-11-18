require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  setup do
    @workout = workouts(:one)
  end

  test 'should not save empty exercise' do
    exercise = Exercise.new

    exercise.save
    refute exercise.valid?
  end

  test 'should save valid exercise' do
    exercise = Exercise.new

    exercise.title = 'My Exercise'
    exercise.workout = @workout
    exercise.sets = 3
    exercise.reps = 10

    exercise.save
    assert exercise.valid?
  end
end

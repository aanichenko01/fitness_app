class SummaryController < ApplicationController
  before_action :authenticate_user!
  
  def summary
    @totalCalories = 0
    @totalDuration = 0
    @totalHours = 0
    @totalMins = 0 
    @startWeight = helpers.weights_this_month.first.weight
    @endWeight = helpers.weights_this_month.last.weight
    @weightDifference = 0
    # calculates total calories for this month
    helpers.workouts_this_month.each do |workout|
      @totalCalories += workout.calories
    end
    # calculates total duration of workouts for this month in hours and minutes
    helpers.workouts_this_month.each do |workout|
      @totalDuration += workout.duration
    end
    @totalHours = @totalDuration/60
    @totalMins = @totalDuration%60

    @weightDifference = @startWeight - @endWeight

    if @weightDifference > 0
      #makes weight appear as a negative to show weight loss
      @weightDifference = @weightDifference * -1
    else 
      #makes weight appear as a positive to show weight gain
      @weightDifference = @weightDifference.abs
    end


  end

  
end

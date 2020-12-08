class SummaryController < ApplicationController
  before_action :authenticate_user!
  
  def summary
    @totalCalories = 0
    @totalDuration = 0
    @totalHours = 0
    @totalMins = 0 
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

    #checks whether there are any weight entries for current user
    if current_user.weights.first.present?
      #if there are calculates weight differnce between first and most recent weight entry this month
      @weightDifference = helpers.weights_this_month.first.weight - helpers.weights_this_month.last.weight
      if @weightDifference > 0
        #makes weight appear as a negative to show weight loss
        @weightDifference = @weightDifference * -1
      else 
        #makes weight appear as a positive to show weight gain
        @weightDifference = @weightDifference.abs
      end
    end
  end
end

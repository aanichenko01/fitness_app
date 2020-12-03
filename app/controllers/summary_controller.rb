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
    @totalMins = @totalDuration % 60
  end

  
end

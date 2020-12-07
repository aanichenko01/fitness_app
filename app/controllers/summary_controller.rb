class SummaryController < ApplicationController
  before_action :authenticate_user!
  
  def summary

    if current_user.workouts.first.present?
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
    end

    if current_user.weights.first.present?
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

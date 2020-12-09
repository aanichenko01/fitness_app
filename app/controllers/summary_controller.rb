class SummaryController < ApplicationController
  # Page can only be accessed if user is logged in
  before_action :authenticate_user!
  
  def summary
    @totalCalories = 0
    @totalDuration = 0
    @totalHours = 0
    @totalMins = 0 
    #Calculates total calories for this month
    helpers.workouts_this_month.each do |workout|
      @totalCalories += workout.calories
    end
    #Calculates total duration of workouts for this month in hours and minutes
    helpers.workouts_this_month.each do |workout|
      @totalDuration += workout.duration
    end

    @totalHours = @totalDuration/60
    @totalMins = @totalDuration%60

    #Checks whether there are any weight entries for current user
    if current_user.weights.first.present?
      #Calculates weight differnce between first and most recent weight entry this month
      @weightDifference = helpers.weights_this_month.first.weight - helpers.weights_this_month.last.weight
      if @weightDifference > 0
        #Indicates weight loss
        @weightDifference = @weightDifference * -1
      else 
        #Indicates weight gain
        @weightDifference = @weightDifference.abs
      end
    end
  end
  
end

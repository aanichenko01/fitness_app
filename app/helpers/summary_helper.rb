module SummaryHelper
    #helper method to display weight difference
    def weight_difference
        if current_user
          return number_with_precision(Weight.weight_difference(current_user), :precision => 1)
          return string.html_safe
        end
    end

    #helper method to return workouts for current month
    def workouts_this_month
      return Workout.this_month(current_user)
      return string.html_safe
    end
end

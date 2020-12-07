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

    #helper method to return weights for current month
    def weights_this_month
      return Weight.this_month(current_user)
      return string.html_safe
    end

    #helper method to return first weight entry
    def first_weight
      return Weight.first_weight(current_user)
      return string.html_safe
    end

    #helper method to return most recent weight entry
    def current_weight
      return Weight.current_weight(current_user)
      return string.html_safe
    end
end

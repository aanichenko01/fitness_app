module SummaryHelper
    #Helper method to display weight difference for current user
    def weight_difference
        if current_user
          return number_with_precision(Weight.weight_difference(current_user), :precision => 1)
          return string.html_safe
        end
    end

    #Helper method to return workouts for current month for current user
    def workouts_this_month
      if current_user
        return Workout.this_month(current_user)
        return string.html_safe
      end
    end

    #Helper method to return weights for current month for current user
    def weights_this_month
      if current_user
        return Weight.this_month(current_user)
        return string.html_safe
      end
    end

    #Helper method to return first weight entry for current user
    def first_weight
      if current_user
        return Weight.first_weight(current_user)
        return string.html_safe
      end
    end

    #Helper method to return most recent weight entry for current user
    def current_weight
      if current_user
        return Weight.current_weight(current_user)
        return string.html_safe
      end
    end
end
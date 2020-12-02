module ApplicationHelper
    #helper method to display weight difference
    def weight_difference
        if current_user
          return number_with_precision(Weight.weight_difference(current_user), :precision => 2)
          return string.html_safe
        end
    end

    #helper method to display calories burned
    def calories_burned
      return Workout.calories_burned_this_month(current_user)
      return string.html_safe
    end
end

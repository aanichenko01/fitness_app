module ApplicationHelper
    #helper method to display weight difference
    def weight_difference
        if current_user
          return number_with_precision(Weight.weight_difference(current_user), :precision => 2)
          return string.html_safe
        end
    end
end

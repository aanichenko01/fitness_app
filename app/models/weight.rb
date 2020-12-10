class Weight < ApplicationRecord
    #Each weight entry is associated to a user
    belongs_to :user
    #Each weight has one image attached
    has_one_attached :image
    #Each weight entry must have a date and weight
    validates :date, :weight, presence: true

    #Scope to show weights only associated to specific user
    scope :user_weights, ->(user) { where(['user_id = ?', user.id]) }

    #Calculates weight difference for a user
    def self.weight_difference(user)
        #First weight entry of user
        initial = Weight.order('date DESC').where(:user_id => user.id).first
        #Most recent entry of user
        current = Weight.order('date ASC').where(:user_id => user.id).first
        #Calculates the difference
        weight_difference = current.weight - initial.weight
        if weight_difference > 0
            #Makes weight appear as a negative to show weight loss
            return weight_difference *-1
        else 
            #Makes weight appear as a positive to show weight gain
            return weight_difference.abs
        end
    end

    #Returns all weights for this month for a user
    def self.this_month(user)
        return Weight.where(date: Date.current.beginning_of_month..Date.current.end_of_month, :user_id => user.id)
    end

    #Returns first weight entry for a user
    def self.first_weight(user)
        return Weight.order('date ASC').where(:user_id => user.id).first
    end

    #Returns most recent weight entry for a user
    def self.current_weight(user)
        return Weight.order('date DESC').where(:user_id => user.id).first
    end
end
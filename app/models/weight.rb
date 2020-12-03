class Weight < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :date, presence: true
    validates :weight, presence: true

    scope :user_weights, ->(user) { where(['user_id = ?', user.id]) }

    #method to calculate total weight user lost/gained
    def self.weight_difference(user)
        # finds first weight entry of user
        initial = Weight.order('date DESC').where(:user_id => user.id).first
        # finds most recent entry of user
        current = Weight.order('date ASC').where(:user_id => user.id).first
        # calculates the difference
        weight_difference = current.weight - initial.weight
        if weight_difference > 0
            #makes weight appear as a negative to show weight loss
            return weight_difference *-1
        else 
            #makes weight appear as a positive to show weight gain
            return weight_difference.abs
        end
    end
end

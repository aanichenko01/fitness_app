class Workout < ApplicationRecord
    belongs_to :user
    has_many :exercises, dependent: :destroy

    validates :date, presence: true
    validates :workout_type, presence: true
    validates :duration, presence: true

    scope :user_workouts, ->(user) { where(['user_id = ?', user.id]) }

    #method to calculate total calories user burned in a month
    def self.this_month(user)
        return Workout.where(date: Date.current.beginning_of_month..Date.current.end_of_month, :user_id => user.id)
    end

end

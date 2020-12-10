class Workout < ApplicationRecord
    #Each workout entry is associated to a user
    belongs_to :user
    #Each workout has many exercises
    has_many :exercises, dependent: :destroy
    #Each workouts must have a date, workout type, and duration 
    validates :date, :workout_type, :duration, presence: true

    #Scope to show workouts only associated to specific user
    scope :user_workouts, ->(user) { where(['user_id = ?', user.id]) }

    #Returns all workouts for this month for a user
    def self.this_month(user)
        return Workout.where(date: Date.current.beginning_of_month..Date.current.end_of_month, :user_id => user.id)
    end

end

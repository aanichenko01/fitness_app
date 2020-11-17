class Workout < ApplicationRecord
    validates :date, presence: true
    validates :workout_type, presence: true
    validates :duration, presence: true
end

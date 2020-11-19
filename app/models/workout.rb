class Workout < ApplicationRecord
    belongs_to :user
    has_many :exercises, dependent: :destroy
    validates :date, presence: true
    validates :workout_type, presence: true
    validates :duration, presence: true
end

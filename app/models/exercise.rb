class Exercise < ApplicationRecord
  #Each exercise is associated to a workout
  belongs_to :workout
  #Each exercise must have a title and workout
  validates :title, :workout, presence: true

  scope :user_exercises, ->(user) { joins(:workout).where(['user_id = ?', user.id]) }
end
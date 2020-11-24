class Exercise < ApplicationRecord
  belongs_to :workout
  validates :title, :workout, presence: true

  scope :user_exercises, ->(user) { joins(:workout).where(['user_id = ?', user.id]) }
end

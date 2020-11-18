class Exercise < ApplicationRecord
  belongs_to :workout
  validates :title, :workout, presence: true
end

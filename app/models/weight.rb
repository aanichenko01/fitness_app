class Weight < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :date, presence: true
    validates :weight, presence: true

    scope :user_weights, ->(user) { where(['user_id = ?', user.id]) }
end

class Weight < ApplicationRecord
    has_one_attached :image
    validates :date, presence: true
    validates :weight, presence: true
end

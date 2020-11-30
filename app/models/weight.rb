class Weight < ApplicationRecord
    validates :date, presence: true
    validates :weight, presence: true
end

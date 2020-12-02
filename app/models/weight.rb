class Weight < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :date, presence: true
    validates :weight, presence: true

    scope :user_weights, ->(user) { where(['user_id = ?', user.id]) }

    def self.weight_difference(user)
        # finds first weight entry of user
        initial = Weight.order('date DESC').where(:user_id => user.id).first
        # finds most recent entry of user
        current = Weight.order('date ASC').where(:user_id => user.id).first
        # calculates the difference
        return (current.weight - initial.weight)
    end
end

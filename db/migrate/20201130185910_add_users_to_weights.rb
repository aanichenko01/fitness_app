class AddUsersToWeights < ActiveRecord::Migration[5.2]
  def up
    add_reference :weights, :user, index: true
    Weight.reset_column_information
    user = User.first

    Weight.all.each do |weight|
      weight.user_id = user.id
      weight.save!
    end

    change_column_null :weights, :user_id, false
    add_foreign_key :weights, :users
  end

  def down
    remove_foreign_key :weights, :users
    remove_reference :weights, :user, index: true
  end
end

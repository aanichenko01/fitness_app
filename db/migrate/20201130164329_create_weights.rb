class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.date :date, null: false
      t.decimal :weight, null: false

      t.timestamps
    end
  end
end

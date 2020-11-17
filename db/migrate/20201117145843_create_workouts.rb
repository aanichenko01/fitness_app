class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.date :date, null: false
      t.string :workout_type, null: false
      t.integer :duration, null: false
      t.integer :calories

      t.timestamps
    end
  end
end

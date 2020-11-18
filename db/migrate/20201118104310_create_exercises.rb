class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.belongs_to :workout, foreign_key: true, null: false
      t.string :title, null: false
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end

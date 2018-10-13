class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :exercise_id
      t.integer :routine_id
      t.integer :reps
      t.float :weight_lbs
      t.float :weight_kgs
      t.integer :height
      t.text :notes
      t.timestamps
    end
  end
end

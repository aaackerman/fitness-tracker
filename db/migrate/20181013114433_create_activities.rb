class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :exercise_id
      t.integer :reps
      t.integer :weight_lbs
      t.integer :weight_kgs
      t.integer :height
      t.text :notes
      t.timestamps
    end
  end
end

class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :routine_id
      t.timestamps
    end

    add_column :activities, :workout_id, :integer
  end
end

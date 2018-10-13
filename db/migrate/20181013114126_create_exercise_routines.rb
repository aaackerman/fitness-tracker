class CreateExerciseRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_routines do |t|
      t.integer :exercise_id
      t.integer :routine_id
      t.timestamps
    end
  end
end

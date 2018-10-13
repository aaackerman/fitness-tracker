class ExerciseRoutine < ApplicationRecord
  belongs_to :exercise
  belongs_to :routine

  validates :exercise_id, :routine_id, presence: :true
end

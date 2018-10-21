class Activity < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  validates :reps, :exercise_id, :routine_id, presence: :true
  default_scope { order(created_at: :asc) }
end

class Activity < ApplicationRecord
  belongs_to :exercise
  belongs_to :routine
  validates :reps, :exercise_id, :routine_id, presence: :true
end

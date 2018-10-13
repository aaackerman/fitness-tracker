class Activity < ApplicationRecord
  has_one :exercise
  has_one :routine
  validates :reps, :exercise_id, :routine_id, presence: :true
end

class Activity < ApplicationRecord
  has_one :exercise
  validates :reps, :id, :name, :exercise_id, presence: :true
end

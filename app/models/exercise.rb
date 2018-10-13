class Exercise < ApplicationRecord
  has_many :routines, through: :exercise_routines
  validates :exercise_routine_id, :id, :name, presence: :true
end

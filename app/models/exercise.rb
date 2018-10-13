class Exercise < ApplicationRecord
  has_many :routines, through: :exercise_routines
  validates :name, presence: :true, uniqueness: :true
end

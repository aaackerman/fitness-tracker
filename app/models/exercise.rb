class Exercise < ApplicationRecord
  has_many :routines, through: :exercise_routines
  validates :id, :name, presence: :true
  validates :name, uniqueness: :true
end

class Routine < ApplicationRecord
  has_many :exercises, through: :exercise_routines
  validates :id, :name, presence: :true
end

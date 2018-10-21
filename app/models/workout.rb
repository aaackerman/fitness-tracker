class Workout < ApplicationRecord
  belongs_to :routine
  has_many :activities
  validates :date, :routine_id, presence: :true
end

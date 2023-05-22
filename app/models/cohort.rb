class Cohort < ApplicationRecord
  has_many :students
  has_many :pairs
  validates :name, :year, presence: true
end

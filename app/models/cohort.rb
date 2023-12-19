class Cohort < ApplicationRecord
  has_many :students
  has_many :pairs
  # belongs_to :activity
  validates :name, :year, presence: true
end

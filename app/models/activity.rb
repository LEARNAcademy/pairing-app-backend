class Activity < ApplicationRecord
  has_many :pairs
  # has_many :cohorts
  has_many :students, through: :pairs
  validates :name, presence: true
end

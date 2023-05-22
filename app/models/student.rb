class Student < ApplicationRecord
  belongs_to :cohort
  has_many :student_one, class_name: 'Student', foreign_key: "student_one_id"
  has_many :student_two, class_name: 'Student', foreign_key: "student_two_id"
  has_many :activities
  validates :cohort_id, :first_name, :last_name, presence: true
end

class Pair < ApplicationRecord
  belongs_to :activity
  belongs_to :cohort
  belongs_to :student_one, class_name: 'Student'
  belongs_to :student_two, class_name: 'Student'
  validates :activity_id, :student_one_id, :student_two_id, presence: true
end

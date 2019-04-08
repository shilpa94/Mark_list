class Student < ApplicationRecord
  has_many :student_subjects
  has_many :subjects, through: :student_subjects
end

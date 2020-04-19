class Course < ApplicationRecord
    validates :name,presence: true,length: {minimum:5 ,maximum: 50}
    validates :short_name,presence: true,length: {minimum:3 ,maximum: 15}
    validates :descrption,presence: true,length: {minimum:5 ,maximum: 300}
    has_many :student_courses
    has_many :student, through: :student_courses

end

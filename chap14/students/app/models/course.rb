class Course < ActiveRecord::Base
  attr_accessible :name

  # a student can e on many courses, a course can have many students
  has_and_belongs_to_many :students
end

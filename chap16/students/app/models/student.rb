class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :family_name, :given_name, :grade_point_average, :middle_name, :start_date

  # a student can have many awards
  has_many :awards, :dependent => :destroy

  # a student can be on many courses, a course can have many students
  has_and_belongs_to_many :courses

  def name
    given_name + " " + family_name
  end

  # convenience method
  # check to see whether a given student is enrolled in a specfic course
  def enrolled_in?(course)
	  self.courses.include?(course)
  end

  # convenience method
  # return the list of courses that a student is NOT yet enrolled in
  def unenrolled_courses
	  Course.find(:all) - self.courses
  end

end

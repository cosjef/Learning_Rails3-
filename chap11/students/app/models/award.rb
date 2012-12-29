class Award < ActiveRecord::Base
  attr_accessible :name, :student_id, :year
  
  # every award is linked to a student via the student_id field
  # this is where the foreign key goes
  belongs_to :student
  validates_existence_of :student_id
end

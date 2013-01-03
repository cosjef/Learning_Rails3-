class CreateCoursesStudents < ActiveRecord::Migration
  def up
  	create_table :courses_students, :id => false do |t|
  		t.integer :course_id, :null => false
  		t.integer :student_id, :null => false
  end

  # Add index to speed up looking up the connection
  # and ensure wer only enroll a student into each course once
  add_index :courses_students, [:course_id, :student_id], :unique => true
end

  def down
    remove_index :courses_students, :column => [:course_id, :student_id]
  	drop_table :courses_students
  end
end

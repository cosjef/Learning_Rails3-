require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { date_of_birth: @student.date_of_birth, family_name: @student.family_name, given_name: @student.given_name, grade_point_average: @student.grade_point_average, middle_name: @student.middle_name, start_date: @student.start_date }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { date_of_birth: @student.date_of_birth, family_name: @student.family_name, given_name: @student.given_name, grade_point_average: @student.grade_point_average, middle_name: @student.middle_name, start_date: @student.start_date }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
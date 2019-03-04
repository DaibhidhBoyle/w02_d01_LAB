require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_hw')

class TestStudent < Minitest::Test

def test_student_name
  student_name = Student.new("Daibhidh Boyle", "E29")
  assert_equal("Daibhidh Boyle", student_name.student_name)
end

def test_student_cohort
  student_cohort = Student.new("Daibhidh Boyle", "E29")
  assert_equal("E29", student_cohort.student_cohort)
end

def test_set_student_name
  student = Student.new("Daibhidh Boyle", "E29")
  student.set_student_name("Daibhidh Dylan")
  assert_equal("Daibhidh Dylan", student.student_name)
end

def test_set_student_cohort
  student = Student.new("Daibhidh Boyle", "E29")
  student.set_student_cohort("E-29")
  assert_equal("E-29", student.student_cohort)
end

def test_student_talk
  student = Student.new("Daibhidh Boyle", "E29")
  assert_equal("I can talk", student.student_talk)
end

def test_student_favourite_language
  student = Student.new("Daibhidh Boyle", "E29")
  assert_equal("I love Ruby!", student.student_favourite_language)
end
end

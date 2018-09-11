require('minitest/autorun')
require('minitest/rg')

require_relative("../student_class")

class Test_Student_Class < Minitest::Test

  def setup
    @student = Student.new("Gillian", "G8")
  end

  def test_get_student_name

    assert_equal("Gillian", @student.name)
  end

  def test_get_student_cohort

    assert_equal("G8", @student.cohort)
  end

  def test_set_student_name
    @student.name = "Anna"
    assert_equal("Anna", @student.name)
  end

  def test_set_student_cohort
    @student.cohort = "G1"
    assert_equal("G1", @student.cohort)

  end
  def test_student_talks

    assert_equal("I have no idea", @student.talking("I have no idea"))
  end

  def test_student_favourite_language
    result = @student.favourite_language("Ruby")

    assert_equal("Gillian's favourite language is Ruby", result)
  end
end

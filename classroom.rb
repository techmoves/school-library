class Classroom
  attr_accessor :label, :student, :rentals

  # has-many side (a classroom has many students)
  # The add_student method already handles setting the classroom for the student
  def initialize(label)
    @label = label
    @student = []
    @rentals = []
  end

  def add_student(student)
    student << student
    student.classroom = self
  end
end0

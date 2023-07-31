require_relative 'person'

# student.rb
class Student < Person
  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

require_relative 'person'

# student.rb
class Student < Person
  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super( age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

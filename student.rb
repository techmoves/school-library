require_relative 'person'

class Student < Person
  attr_accessor :name, :classroom, :parent_permission

  def initialize(name, age, parent_permission)
    super(name, age)
    @parent_permission = parent_permission
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

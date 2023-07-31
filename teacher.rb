require_relative 'person'

# teacher.rb
class Teacher < Person
  def initialize(age, specialization, parent_permission: true, name: 'Unknown')
    super(name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

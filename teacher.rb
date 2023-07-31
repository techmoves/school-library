require_relative 'person'

# teacher.rb
class Teacher < Person
  def initialize(_id, age, specialization, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

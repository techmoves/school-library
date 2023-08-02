require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
# require_relative 'rentals'

class Person < Nameable
  attr_accessor :rentals
  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..200)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_accessor :name, :age
  attr_reader :id

  def correct_name
    name
  end
end

person = Person.new(22, name: 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

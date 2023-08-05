require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(name, age)
    super
    @id = Random.rand(1..200)
    @name = name
    @age = age
    @rentals = []
  end

  def add_rental(rental)
    @rental.push(rental)
    rental.person = self
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end

require_relative 'nameable'


class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  # rubocop:disable Lint/MissingSuper
  def initialize(name, age)
    # super
    @id = Random.rand(1..200)
    @name = name
    @age = age
    @rentals = []
  end

  # rubocop:enable Lint/MissingSuper
  def add_rental(rental)
    @rental.push(rental)
    rental.person = self
  end
end

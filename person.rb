class Person < Nameable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def correct_name
    name
  end
end
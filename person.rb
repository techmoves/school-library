class Person < Nameable
  attr_reader :name

  def initialize(name)
    super(name)
    @name = name
  end

  def correct_name
    name
  end
end

class Rentals
    attr_accessor :student
    
    def initialize(date, :book, :person)
        @date = date
        @book = book
        @person = person

          # Adding the rental to the associated objects
        book.rentals << self
        person.rentals << self
    end    

end    
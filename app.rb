require_relative 'person'
require_relative 'book'
require_relative 'rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books
    puts "List of all books:"
    @books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end

  def list_all_people
    puts "List of all people:"
    @people.each do |person|
      puts "#{person.name} (#{person.class})"
    end
  end

  def create_person(name, role)
    if role == "teacher"
      person = Teacher.new(name)
    elsif role == "student"
      person = Student.new(name)
    else
      puts "Invalid role. Please enter 'teacher' or 'student'."
      return
    end

    @people << person
    puts "#{person.name} (#{person.class}) has been created."
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
    puts "#{book.title} by #{book.author} has been added to the library."
  end

  def create_rental(person_id, book_title)
    person = @people.find { |p| p.id == person_id }
    book = @books.find { |b| b.title == book_title }

    if person.nil?
      puts "Person with ID #{person_id} not found."
    elsif book.nil?
      puts "Book with title '#{book_title}' not found."
    else
      rental = Rental.new(Time.now, book, person)
      @rentals << rental
      puts "#{book.title} has been rented by #{person.name} (#{person.class})."
    end
  end

  def list_rentals_for_person(person_id)
    person = @people.find { |p| p.id == person_id }

    if person.nil?
      puts "Person with ID #{person_id} not found."
    else
      puts "Rentals for #{person.name} (#{person.class}):"
      rentals = @rentals.select { |r| r.person == person }
      rentals.each do |rental|
        puts "#{rental.book.title} on #{rental.date}"
      end
    end
  end
end

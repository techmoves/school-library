require_relative 'app'

def main
  app = App.new

  loop do
    puts "---------------------------------"
    puts "Select an option:"
    puts "1. List all books"
    puts "2. List all people"
    puts "3. Create a person"
    puts "4. Create a book"
    puts "5. Create a rental"
    puts "6. List rentals for a given person id"
    puts "7. Quit"
    puts "---------------------------------"
    choice = gets.chomp.to_i

    case choice
    when 1
      app.list_all_books
    when 2
      app.list_all_people
    when 3
      puts "Enter name:"
      name = gets.chomp
      puts "Enter role (teacher/student):"
      role = gets.chomp.downcase
      app.create_person(name, role)
    when 4
      puts "Enter book title:"
      title = gets.chomp
      puts "Enter author:"
      author = gets.chomp
      app.create_book(title, author)
    when 5
      puts "Enter person ID:"
      person_id = gets.chomp.to_i
      puts "Enter book title:"
      book_title = gets.chomp
      app.create_rental(person_id, book_title)
    when 6
      puts "Enter person ID:"
      person_id = gets.chomp.to_i
      app.list_rentals_for_person(person_id)
    when 7
      puts "Exiting the app..."
      break
    else
      puts "Invalid choice. Please choose a valid option."
    end
  end
end

main

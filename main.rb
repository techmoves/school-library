require_relative 'app'

def display_options
  puts '---------------------------------'
  puts 'Select an option:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List rentals for a person'
  puts '7. Quit'
  puts '---------------------------------'
end

def get_user_input(prompt)
  puts prompt
  gets.chomp
end

def perform_option(app, choice)
  case choice
  when 1 then app.list_all_books
  when 2 then app.list_all_people
  when 3 then create_person_option(app)
  when 4 then create_book_option(app)
  when 5 then create_rental_option(app)
  when 6 then list_rentals_for_person_option(app)
  when 7
    puts 'Exiting the app...'
    exit
  else
    puts 'Invalid choice. Please choose a valid option.'
  end
end

def create_person_option(app)
  name = get_user_input('Enter name:')
  role = get_user_input('Enter role (teacher/student):').downcase
  app.create_person(name, role)
end

def create_book_option(app)
  title = get_user_input('Enter book title:')
  author = get_user_input('Enter author:')
  app.create_book(title, author)
end

def create_rental_option(app)
  person_id = get_user_input('Enter person ID:').to_i
  book_title = get_user_input('Enter book title:')
  app.create_rental(person_id, book_title)
end

def list_rentals_for_person_option(app)
  person_id = get_user_input('Enter person ID:').to_i
  app.list_rentals_for_person(person_id)
end

def main
  app = App.new

  loop do
    display_options
    choice = get_user_input('Enter your choice:').to_i

    perform_option(app, choice)
  end
end

main

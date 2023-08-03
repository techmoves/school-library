require_relative 'app'

def display_options
  puts '---------------------------------'
  puts 'Select an option by choosing the number:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List rentals for a person'
  puts '7. Quit'
  puts '---------------------------------'
end

def handle_option(option, app)
  option_actions = {
    1 => -> { app.list_all_books },
    2 => -> { app.list_all_people },
    3 => -> { app.create_person },
    4 => -> { app.create_book },
    5 => -> { app.create_rental },
    6 => -> { app.list_all_rentals },
    7 => -> { puts 'Exiting' },
    default: -> { puts 'Enter a number between 1 and 7.' }
  }

  action = option_actions[option] || option_actions[:default]
  action.call
end

def main
  app = App.new
  @option = 0

  until @option == 7
    display_menu
    @option = gets.chomp.to_i
    handle_option(@option, app)
  end
end

main

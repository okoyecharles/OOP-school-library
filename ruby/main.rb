require_relative 'options/print_list'
require_relative 'options/create_person'
require_relative 'options/create_book'
require_relative 'options/create_rental'
require_relative 'options/get_rentals'

def main
  library = {
    books: [],
    people: [],
    rentals: []
  }

  options = {
    '1': 'List all books',
    '2': 'List all people',
    '3': 'Create a person',
    '4': 'Create a book',
    '5': 'Create a rental',
    '6': 'List all rentals for a given person id',
    '7': 'Exit'
  }

  running = true

  print "Welcome to School Library App!\n"

  while running
    print "Please choose an option by entering a number:\n"
    options.each { |optionkey, option| print "#{optionkey} - #{option}\n" }

    response = gets.chomp

    case response
    when '1'
      print_books(library[:books])
      print "\n\n"
    when '2'
      print_people(library[:people])
      print "\n\n"
    when '3'
      library[:people] << create_person
    when '4'
      library[:books] << create_book
    when '5'
      if library[:books].empty? || library[:people].empty?
        print "Error! Try creating a person and book first\n\n"
      else
        library[:rentals] << create_rental(library)
      end
    when '6'
      get_rentals_by_id(library)
    when '7'
      print "Thank you for using this app!\n\n"
      running = false
    else
      print "Invalid option... Try Again!\n\n"
    end
  end
end

main

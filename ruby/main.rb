require_relative 'app'

def main
  print "Welcome to School Library App!\n"
  app = App.new
  app.load_data
  loop do
    message
    option = gets.chomp
    app_case(option, app)

    break if option == '7'
  end
end

def app_case(option, app)
  case option
  when '1'
    app.print_books
    print "\n\n"
  when '2'
    app.print_people
    print "\n\n"
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    app.create_rental
  when '6'
    app.rentals_by_id
  when '7'
    app.leave
  else
    print "Invalid option... Try Again!\n\n"
  end
end

def message
  print "Please choose an option by entering a number:\n"
  puts "
  1 - List All Books
  2 - List All People
  3 - Create a Person
  4 - Create a Book
  5 - Create a Rental
  6 - List All Rentals
  7 - Exit"
end

main

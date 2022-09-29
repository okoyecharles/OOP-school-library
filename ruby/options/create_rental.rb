require_relative 'print_list'
require_relative '../rental'

def create_rental(library)
  print "Select a book from the following list by number\n"
  print "\n"
  print_books(library[:books], true)
  book_num = gets.chomp.to_i
  book = library[:books][book_num]

  print "\n"

  print "Select a person from the following list by number (not id)\n"
  print "\n"
  print_people(library[:people], true)
  person_num = gets.chomp.to_i
  person = library[:people][person_num]

  print "\n"

  print 'Date: '
  date = gets.chomp

  rental = Rental.new(date, person, book)
  print "Rental created successfully\n\n"
  rental
end

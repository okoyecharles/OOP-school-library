def print_books(list, with_index = false)
  list.each_with_index do |item, index|
    print (with_index ? "#{index}) " : '') + "Title: \"#{item.title}\", Author: #{item.author}"
    print "\n"
  end
  print 'Currently no books!' if list.length.zero?
end

def print_people(list, with_index = false)
  list.each_with_index do |item, index|
    print (with_index ? "#{index}) " : '') + "[#{item.class}] Name: #{item.name}, ID: #{item.id}, Age: #{item.age}"
    print "\n"
  end
  print 'Currently no people!' if list.length.zero?
end

def print_rentals(list, id)
  list = list.select { |person| person.id == id }
  if list.empty?
    print "Invalid ID\n\n"
  elsif list[0].rentals.empty?
    print "The person has not rented a book\n\n"
  else
    print "Rentals:\n"
    list[0].rentals.each do |rental|
      print "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}\n"
    end
    print "\n\n"
  end
end

require_relative '../book'

def create_book
  print 'Title: '
  title = gets.chomp

  print 'Author: '
  author = gets.chomp

  book = Book.new(title, author)

  print "Book created successfully\n\n"

  book
end

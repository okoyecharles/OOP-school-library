require 'pry'
require_relative 'student'
require_relative 'book'
require_relative 'rental'

# Here I introduced a bug that prevents a rental from being created

student = Student.new('Science', 24, 'Charles', true)
book = Book.new('The way of life', 'Aristotle')

rental = Rental.new('2022/09/30', student, book)

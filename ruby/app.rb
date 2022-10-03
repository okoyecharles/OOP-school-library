require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)

    print "Book created successfully\n\n"

    @books << book
  end

  def create_person
    person = nil

    print 'Do you want to create a student (1) or teacher (2)? [Input the number]: '
    student_or_teacher = gets.chomp

    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    if student_or_teacher == '1'
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp

      print 'Classroom: '
      classroom_label = gets.chomp
      classroom = Classroom.new(classroom_label)
      person = Student.new(classroom, age, name, permission == 'Y')
    else
      print 'Specialization: '
      spec = gets.chomp
      person = Teacher.new(spec, age, name)
    end

    print "Person created successfully\n\n"

    @people << person
  end

  def create_rental
    print "Select a book from the following list by number\n"
    print "\n"
    print_books(true)
    book_num = gets.chomp.to_i
    book = @books[book_num]

    print "\n"

    print "Select a person from the following list by number (not id)\n"
    print "\n"
    print_people(true)
    person_num = gets.chomp.to_i
    person = @people[person_num]

    print "\n"

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, person, book)
    print "Rental created successfully\n\n"
    @rentals << rental
  end

  def rentals_by_id
    print 'ID of person: '
    id = gets.chomp.to_i

    print_rentals(id)
  end

  def print_books(with_index = false)
    @books.each_with_index do |item, index|
      print (with_index ? "#{index}) " : '') + "Title: \"#{item.title}\", Author: #{item.author}"
      print "\n"
    end
    print 'Currently no books!' if @books.length.zero?
  end

  def print_people(with_index = false)
    @people.each_with_index do |item, index|
      print (with_index ? "#{index}) " : '') + "[#{item.class}] Name: #{item.name}, ID: #{item.id}, Age: #{item.age}"
      print "\n"
    end
    print 'Currently no people!' if @people.length.zero?
  end

  def print_rentals(id)
    list = @people.select { |person| person.id == id }
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
end

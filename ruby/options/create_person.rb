require_relative '../student'
require_relative '../teacher'
require_relative '../classroom'

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

  person
end

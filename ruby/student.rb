require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = Classroom.new(classroom)
    add_to_class(@classroom)
  end

  def play_hooky
    '¯|(ツ)/¯'
  end

  def add_to_class(classroom)
    classroom.add_student(self)
  end
end

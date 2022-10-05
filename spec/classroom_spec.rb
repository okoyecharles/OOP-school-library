require_relative 'spec_helper'

describe Classroom do
  context 'Unit Tests' do
    before(:each) do
      @classroom = Classroom.new("Science")
    end
    it 'class initializes' do
      expect(@classroom).to be_an_instance_of Classroom
    end
    it 'Can add student' do
      student = Student.new(@classroom, 25, 'Charles', true)
      @classroom.add_student(student)
      expect(@classroom.students.length).to eq 1
    end
  end
end
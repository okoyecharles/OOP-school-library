require_relative 'spec_helper'

describe Student do
  context 'unit tests' do
    before(:each) do
      classroom = Classroom.new('Science')
      @student = Student.new(classroom, 25, 'Charles', true)
    end

    it 'class initializes' do
      expect(@student).to be_an_instance_of Student
    end

    it 'is a descendant of Person class' do
      expect(Student).to be < Person
    end

    it 'can play hooky' do
      expect(@student.play_hooky).to eq '-\(:))/-'
    end
  end
end

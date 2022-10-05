require_relative 'spec_helper'

describe Teacher do
  context 'Unit Tests' do
    before(:each) do
      @teacher = Teacher.new('Science', 25, 'Berkay', true)
    end
    it 'class initializes' do
      expect(@teacher).to be_an_instance_of Teacher
    end
    it 'can_use_services? method returns true' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end

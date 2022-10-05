require_relative 'spec_helper'

describe Person do
  context 'unit tests' do
    before(:each) do
      @person = Person.new(25, 'Charles', false)
    end

    it 'class initializes' do
      expect(@person).to be_an_instance_of Person
    end

    it 'attributes are accessible' do
      expect(@person.age).to be(25)
      expect(@person.name).to eq('Charles')
      expect(@person.parent_permission).to be false
    end

    it 'can_use_services? method returns true' do
      expect(@person.can_use_services?).to be true
    end
  end
end

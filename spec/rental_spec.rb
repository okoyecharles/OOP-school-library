require_relative 'spec_helper'

describe Rental do
  context 'unit tests' do
    before(:each) do
      @book = Book.new('Lord of the Rings', 'Charles')
      @person = Person.new(25, 'Charles', false)
      @rental = Rental.new('2000/00/00', @person, @book)
    end

    it 'class initializes' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'attributes are accessible' do
      expect(@rental.book).to eq(@book)
      expect(@rental.person).to eq(@person)
    end
  end
end

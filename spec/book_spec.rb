require_relative 'spec_helper'

describe Book do
  context 'unit tests' do
    before(:each) do
      @book = Book.new('Lord of the Rings', 'Charles')
    end

    it 'class initializes' do
      expect(@book).to be_an_instance_of Book
    end

    it 'attributes are accessible' do
      expect(@book.title).to eq('Lord of the Rings')
      expect(@book.author).to eq('Charles')
    end
  end
end

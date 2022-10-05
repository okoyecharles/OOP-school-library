require_relative 'spec_helper'

describe 'Decorators' do
  context 'Unit tests' do
    before(:each) do
      person = Person.new(12, 'okoyecharles ', true)
      @base_decorator = BaseDecorator.new(person)
    end

    describe CapitalizeDecorator do
      it 'capitalizes the name' do
        c_decorator = CapitalizeDecorator.new(@base_decorator)
        expect(c_decorator.correct_name).to eq 'Okoyecharles '
      end
    end

    describe TrimmerDecorator do
      it 'trims the name' do
        t_decorator = TrimmerDecorator.new(@base_decorator)
        expect(t_decorator.correct_name).to eq 'okoyecharl'
      end
    end
  end
end

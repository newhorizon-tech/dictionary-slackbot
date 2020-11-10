require_relative '../lib/parser.rb'

describe Parser do
  subject { Parser.new('apple') }
  describe '#initialize' do
    it 'API is working succesfully' do
      expect(subject.word).to eq('apple')
    end
    it 'does not initialize if no argument is given' do
      expect { Parser.new }.to raise_error(ArgumentError)
    end
    it 'does not initialize if more than one aguments is given' do
      expect { Parser.new('apple', 'fruit') }.to raise_error(ArgumentError)
    end
  end
end

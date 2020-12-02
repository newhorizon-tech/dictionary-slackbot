require 'rspec/expectations'
begin
  require 'slack-ruby-bot/rspec'
rescue LoadError
  system 'bundle install'
  system 'rspec'
  exit
end
require_relative '../lib/bot'
require_relative '../lib/parser'
require_relative '../lib/commands/define'
require_relative '../lib/commands/synonyms'

describe Parser do
  subject { Parser.new('apple') }
  describe '#initialize' do
    it 'API is working succesfully' do
      expect(subject.word).to eq('apple')
    end
    it 'does not initialize if no argument is given' do
      expect { Parser.new }.to raise_error(ArgumentError)
    end
    it 'does not initialize if more than two aguments is given' do
      expect { Parser.new('apple', 'fruit', 'something') }.to raise_error(ArgumentError)
    end
  end
end

describe Dictionary do
  describe SlackRubyBot::Commands do
    it 'responds with any message' do
      expect(message: "#{SlackRubyBot.config.user} fruit").to respond_with_slack_message
    end
    it 'says hi to the user' do
      message = 'Hi <@user>!'
      expect(message: "#{SlackRubyBot.config.user} hi").to respond_with_slack_message(message)
    end
    it 'returns correct definition of fruit' do
      fruit_def = 'The sweet and fleshy product of a tree or other plant that contains seed and can be eaten as food.'
      expect(message: "#{SlackRubyBot.config.user} define fruit").to respond_with_slack_message(fruit_def)
    end
    it 'returns synonyms for work' do
      synonyms = "labour, toil, exertion, effort, slog, drudgery, the sweat of one's brow"
      expect(message: "#{SlackRubyBot.config.user} synonyms work").to respond_with_slack_message(synonyms)
    end
    it 'displays help' do
      expect(message: "#{SlackRubyBot.config.user} help").to respond_with_slack_message(/help/)
    end
  end
end

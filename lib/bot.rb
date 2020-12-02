require_relative 'commands/define'
require_relative 'commands/synonyms'
require_relative 'commands/wordoftheday'

module Dictionary
  class MainBot < SlackRubyBot::Bot
    help do
      title 'Dictionary Bot'
      desc 'https://github.com/newhorizon-tech/dictionary-slackbot'
      command 'wordoftheday' do
        desc 'Tells you the word of the day'
      end
      command 'Word of the day' do
        desc 'Tells you the word of the day'
      end
      command 'Word of the day on <date>' do
        desc 'Tells you the word of the day for the specified <date>'
      end
      command 'define <word>' do
        desc 'Tells you the definition of the specified <word>'
      end

      command 'What is the meaning of <word>?' do
        desc 'Tells you the definition of the specified <word>'
      end

      command 'synonyms <word>' do
        desc 'Lists the synonyms of the specified <word>'
      end

      command 'Alternative words for <word>?' do
        desc 'Lists the synonyms of the specified <word>'
      end
    end
  end
end

SlackRubyBot.configure do |config|
  config.aliases = [':dictionary:', 'dictionary', 'dict']
end

require_relative 'commands/define.rb'
require_relative 'commands/synonyms.rb'

module Dictionary
  class MainBot < SlackRubyBot::Bot
  end
end

SlackRubyBot.configure do |config|
  config.aliases = [':dictionary:', 'dictionary', 'dict']
end

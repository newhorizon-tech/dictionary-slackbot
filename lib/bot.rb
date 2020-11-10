require_relative 'commands/define.rb'

module Dictionary
  class MainBot < SlackRubyBot::Bot
  end
end

SlackRubyBot.configure do |config|
  config.aliases = [':dictionary:', 'dictionary']
end

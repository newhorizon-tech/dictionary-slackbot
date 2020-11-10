require_relative '../parser.rb'

module Dictionary
  class MainBot < SlackRubyBot::Bot
    match(/^What is the meaning of (?<word>\w*)\?$/) do |client, data, match|
      word = match[:word]
      ParseIt = Parser.new(word)
      definition = ParseIt.definition.to_s
      client.say(channel: data.channel, text: "#{match[:word]}: #{definition}")
    end
  end
  module Commands
    class Define < SlackRubyBot::Commands::Base
      command 'define' do |client, data, match|
        word = match['expression']
        ParseIt = Parser.new(word)
        definition = ParseIt.definition.to_s
        client.say(text: definition, channel: data.channel)
      end
    end
  end
end

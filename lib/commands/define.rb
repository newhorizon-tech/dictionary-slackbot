require 'open-uri'
require 'json'
require_relative '../parser.rb'

module Dictionary
  module Commands
    class Define < SlackRubyBot::Commands::Base
      command 'define' do |client, data, match|
        word = match['expression']
        ParseIt = Parser.new(word)
        definition = ParseIt.definition
        client.say(text: definition.to_s, channel: data.channel)
        # client.say(text: "Output is #{output}", channel: data.channel)
      end
    end
  end
end

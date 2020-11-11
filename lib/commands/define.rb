require_relative '../parser.rb'

module Dictionary
  class MainBot < SlackRubyBot::Bot
    match(/^What is the meaning of (?<word>\w*)\?$/) do |client, data, match|
      word = match[:word]
      new_parse = Parser.new(word)
      definition = new_parse.definition.to_s
      client.say(channel: data.channel, text: "#{match[:word]}: #{definition}")
    end
  end
  class Define < SlackRubyBot::Commands::Base
    command 'define' do |client, data, match|
      word = match['expression']
      new_parse = Parser.new(word)
      definition = new_parse.definition.to_s
      client.say(text: definition, channel: data.channel)
    end
  end
end

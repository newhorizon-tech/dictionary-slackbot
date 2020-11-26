require_relative '../parser.rb'

module Dictionary
  class MainBot < SlackRubyBot::Bot
    match(/^Word of the day/i) do |client, data, _match|
      new_parse = Parser.new('..wordoftheday..')
      wotd = new_parse.wordoftheday
      client.say(channel: data.channel, text: "The word of the day is: #{wotd[0]}")
      client.say(channel: data.channel, text: (wotd[1]).to_s)
    end
  end
  class WordOfTheDay < SlackRubyBot::Commands::Base
    command 'wordoftheday' do |client, data, _match|
      new_parse = Parser.new('..wordoftheday..')
      wotd = new_parse.wordoftheday
      client.say(channel: data.channel, text: "The word of the day is: #{wotd[0]}")
      client.say(channel: data.channel, text: (wotd[1]).to_s)
    end
  end
end

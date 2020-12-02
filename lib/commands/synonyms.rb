require_relative '../parser'

module Dictionary
  class MainBot < SlackRubyBot::Bot
    match(/^Alternative words for (?<word>\w*)\?$/i) do |client, data, match|
      word = match[:word]
      new_parse = Parser.new(word)
      synonyms = new_parse.synonyms.join(', ')
      client.say(channel: data.channel, text: "Alternative words for #{match[:word]}: #{synonyms}")
    end
  end

  class Synonyms < SlackRubyBot::Commands::Base
    command 'synonyms' do |client, data, match|
      word = match['expression']
      new_parse = Parser.new(word)
      synonyms = new_parse.synonyms.join(', ')
      client.say(text: "Synonyms for #{word}:", channel: data.channel)
      client.say(text: synonyms, channel: data.channel)
    end
  end
end

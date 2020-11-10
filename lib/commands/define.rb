require 'open-uri'
require 'json'

module Dictionary
  module Commands
    class Define < SlackRubyBot::Commands::Base
      command 'define' do |client, data, match|
        client.say(text: 'The isolated word is', channel: data.channel)
        # output = Tools.isolate_word(match)

        client.say(text: "Match is #{match}", channel: data.channel)
        # client.say(text: "Output is #{output}", channel: data.channel)
      end
    end
  end
end

class Tools
  def self.isolate_word(word)
    items = word.split('define')
    word = items[1].strip
    puts word
    word
  end
end

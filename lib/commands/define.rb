module Dictionary
  module Commands
    class Define < SlackRubyBot::Commands::Base
      command 'define' do |client, data, match|
        client.say(text: 'Slack is working', channel: data.channel)
        client.say(text: "Match is '#{match}''", channel: data.channel)
      end
    end
  end
end

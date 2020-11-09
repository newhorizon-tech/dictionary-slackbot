#!/usr/bin/ruby

require 'slack-ruby-bot'
require 'dotenv'
require_relative 'lib/bot.rb'
require_relative 'lib/commands/test.rb'

puts 'Hello bot'
test_function

Dotenv.load

class TestBot < SlackRubyBot::Bot
  command 'test' do |client, data, match|
    client.say(text: 'Slack is working', channel: data.channel)
    client.say(text: "Client is '#{client}''", channel: data.channel)
    client.say(text: "Data is '#{data}''", channel: data.channel)
    client.say(text: "Match is '#{match}''", channel: data.channel)
  end
end

SlackRubyBot.configure do |config|
  config.aliases = [':simp:', 'based']
end

TestBot.run

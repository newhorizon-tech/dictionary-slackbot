$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'slack-ruby-bot'
require 'dotenv'
Dotenv.load

require_relative 'lib/bot.rb'

Dictionary::MainBot.run

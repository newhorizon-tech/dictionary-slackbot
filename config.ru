$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'slack-ruby-bot'
require 'dotenv'
require_relative 'lib/bot.rb'

Dotenv.load
Dictionary::MainBot.run

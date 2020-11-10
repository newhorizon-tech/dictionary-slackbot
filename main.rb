#!/usr/bin/ruby

require 'slack-ruby-bot'
require 'dotenv'
require_relative 'lib/bot.rb'

Dotenv.load

Dictionary::MainBot.run

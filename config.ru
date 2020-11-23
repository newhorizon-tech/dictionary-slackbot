$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'celluloid'
require 'celluloid/io'
require 'slack-ruby-bot'
require 'dotenv'
Dotenv.load

require_relative 'lib/bot.rb'
require_relative 'lib/server.rb'

Thread.abort_on_exception = true

Thread.new do
  begin
    Dictionary::MainBot.run
  rescue StandardError => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Dictionary::Web

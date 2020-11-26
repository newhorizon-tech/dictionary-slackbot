require 'json'
require 'httparty'
require 'dotenv'

class Parser
  attr_reader :word
  attr_accessor :data
  def initialize(word)
    if word.eql?('..wordoftheday..')
      Dotenv.load('../.env')
      date = Date.today
      wordnik_key = ENV['WORDNIK_API_KEY']
      url = "https://api.wordnik.com/v4/words.json/wordOfTheDay?date=#{date}&api_key=#{wordnik_key}"
    else
      url = "https://api.dictionaryapi.dev/api/v2/entries/en/#{word}"
      @word = word
    end
    response = HTTParty.get(url, format: :json)
    @data = response.parsed_response
    @word = @data.fetch('word') unless wordnik_key.nil?
  end

  def definition
    @data.first.fetch('meanings')[0].fetch('definitions')[0].fetch('definition')
  end

  def synonyms
    @data.first.fetch('meanings')[0].fetch('definitions')[0].fetch('synonyms')
  end

  def wordoftheday
    [@word, @data.fetch('definitions')[1].fetch('text')]
  end
end

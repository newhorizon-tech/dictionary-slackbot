require 'json'
require 'httparty'

class Parser
  attr_reader :word
  attr_accessor :data
  def initialize(word)
    response = HTTParty.get("https://api.dictionaryapi.dev/api/v2/entries/en/#{word}", format: :json)
    @data = response.parsed_response.first
    @word = word
  end

  def definition
    @data.fetch('meanings')[0].fetch('definitions')[0].fetch('definition')
  end

  def synonyms
    @data.fetch('meanings')[0].fetch('definitions')[0].fetch('synonyms')
  end
end

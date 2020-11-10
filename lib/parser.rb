require 'json'
require 'httparty'

class Parser
  def initialize(word)
    response = HTTParty.get("https://api.dictionaryapi.dev/api/v2/entries/en/#{word}", format: :json)
    @data = response.parsed_response.first
  end

  def definition
    word_def = @data.fetch('meanings')[0].fetch('definitions')[0].fetch('definition')
    word_def
  end
end

one = Parser.new('simple')
p one.definition

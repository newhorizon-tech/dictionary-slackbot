require 'sinatra/base'

module Dictionary
  class Web < Sinatra::Base
    get '/' do
      'Dictionary works!'
    end
  end
end

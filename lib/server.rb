require 'sinatra/base'

module Dictionary
  class Web < Sinatra::Base
    get '/' do
      'Define Dictionary'
    end
  end
end

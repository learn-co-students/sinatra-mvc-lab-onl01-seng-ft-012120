require_relative 'config/environment'
require_relative './models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @phrase = (params["user_phrase"])
    @piglatinizer = PigLatinizer.new
    erb :result
  end

end

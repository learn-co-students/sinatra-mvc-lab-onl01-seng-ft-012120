require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        text = PigLatinizer.new
        @piglatin = text.piglatinize(params[:user_phrase])
        @piglatin
    end
end
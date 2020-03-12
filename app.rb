require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        
        piglatinizer_text = PigLatinizer.new
        @piglatin = piglatinizer_text.piglatinize(params[:user_phrase])

        erb :results
    end
end
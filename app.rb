require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        @piglatin = PigLatinizer.new.sentence_to_piglatin(params[:user_phrase])
        erb :results

    end
end
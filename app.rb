require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        # new_pig = PigLatinizer.new 
        # @user_phrase = new_pig.piglatinize(params[:user_phrase])
        @user_phrase = params[:user_phrase]
        erb :results
    end

end



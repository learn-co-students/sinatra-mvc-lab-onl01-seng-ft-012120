require_relative 'config/environment'



class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end 
  
   post '/piglatinize' do
    temp_pig = PigLatinizer.new
    @latinized = temp_pig.piglatinize(params[:user_phrase])
    #@text = params[:user_phrase]
    #@latinized = PigLatinizer.new(@text)
    
    erb :results
  end
end
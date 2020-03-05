require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @new = params["user_phrase"] 
    news = PigLatinizer.new
    @pig = news.piglatinize(@new)
    erb :pig
  end 
end
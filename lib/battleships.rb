require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
     @player = params[:name]
     erb :index
  end

  get '/create_new_user' do
    @player = params[:name]
    erb :create_new_user
  end

  # get '/welcome' do 
  # 	erb :welcome
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

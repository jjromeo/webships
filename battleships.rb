require 'sinatra'
Dir["./lib/*.rb"].each {|file| require file }

class BattleShips < Sinatra::Base

  enable :sessions
  set :views, File.join(root,'.', 'views')
  GAME = Game.new(10)

  get '/' do
    erb :index
  end

  get '/create_new_user' do
    erb :create_new_user
  end

  post '/create_new_user' do
    @players = {}
    @players[:player1] = Player.new(params[:name], 10)
    @players[:player2] = Player.new(params[:name], 10)
    GAME.player1 = @players[:player1]
    GAME.player2 = @players[:player2]
    erb :create_new_user
  end

  # get '/welcome' do 
  # 	erb :welcome
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0



end

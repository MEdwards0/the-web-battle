require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))

    if @game.game_over?
      redirect '/game-over'
    else
      erb :attack
    end
    
  end

  get '/switch-turns' do
    # @game = $game #is this correct?
    $game.switch_turns
    redirect '/play'
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  run! if app_file == $0
end

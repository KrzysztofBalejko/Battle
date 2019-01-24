require 'sinatra/base'
require './lib/player'
# require 'shotgun'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # session[:player_1_name] = params[:player_one]
    # session[:player_2_name] = params[:player_two]
    $player_1_name = Player.new(params[:player_one])
    $player_2_name = Player.new(params[:player_two])

    # session[:player_1_health] = 100
    # session[:player_2_health] = 100
    # @player_1_health = $player_1_name.health
    # @player_2_health = $player_2_name.health
    redirect "/play"
  end

  get '/play' do
    @player_1 = $player_1_name.name
    @player_2 = $player_2_name.name
    @player_1_health = $player_1_name.health
    @player_2_health = $player_2_name.health
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1_name.name
    @player_2 = $player_2_name.name
    @player_2_health = $player_1_name.attack($player_2_name)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

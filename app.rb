require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:name]
    p params
    erb :play
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

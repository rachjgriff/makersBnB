require 'sinatra/base'
require './lib/space'

class MakersBnB < Sinatra::Base

  get '/spaces/new' do
    erb :new_space
  end

  get '/spaces' do
    @spaces = Space.all
    erb :list_spaces
  end

  post '/spaces' do
    Space.create(name: params[:name])
    redirect '/spaces'
  end

  run! if app_file == $0
end

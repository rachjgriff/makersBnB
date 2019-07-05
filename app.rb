require 'sinatra/base'
require './lib/space'
require './lib/user'


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

  get '/signup' do
    erb :signup
  end

  post '/signup' do
  user = User.create(name: params[:name], username: params[:username], email: params[:email], password: params[:password])
  redirect '/spaces'
  end

  run! if app_file == $0
end

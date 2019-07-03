require 'sinatra/base'

class MakersBnB < Sinatra::Base

  get '/spaces/new' do
    erb :new_space
  end

  post '/spaces' do
    erb :success
  end

  run! if app_file == $0
end

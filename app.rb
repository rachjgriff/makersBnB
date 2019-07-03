require 'sinatra/base'

class MakersBnB < Sinatra::Base

  get '/spaces/new' do
    erb :new_space
  end


  get '/spaces' do
    @spaces = ['Boardroom', 'Hall', 'My House']
    erb :list_spaces
  end

  post '/spaces' do
  end

  run! if app_file == $0
end

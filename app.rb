require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "I am too smart for you"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
     @item = params[:item]
     session[:item] = params[:item]
  end

end

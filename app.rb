require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secrets, "houseofel"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session['item'] = params['item']
        @item = params['item']
        @session = session

        erb :cart
    end
end
require 'sinatra'

get '/' do
    erb :index
end


get '/:name' do
    @name = params[:name]
    erb :greet
end

get '/' do
    end
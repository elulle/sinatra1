require 'sinatra'

get '/' do
    "Hello"
end


 get '/:name' do
     "Hello #{params[:name]}"
     raise
 end

####Cant do 'bye' 
 get '/:name/"bye"' do
    "Goodbye #{params[:name]}"
    #raise
end

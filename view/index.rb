require 'sinatra'

get '/' do
  "Hello World"
end

get '/goodbye' do
  "Goodby visitor!"
end

get '/about' do
  output = "<h2>Sinatra</h2>"
  output << "<p> This is my first Sinatra app</p>"
  output
end

require 'sinatra'

# Default file paths
# set :root, File.dirname(__FILE__)
# set :public_folder, settings.root + "public"
# set :views, settings.root + "views"

get '/' do
  erb :index
end

get '/test' do
  template = "<h1>The current year is <%= Time.now.year %></h1> <h2>Exact time is: <%= Time.now %>"
  erb template
end

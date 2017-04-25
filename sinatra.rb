require 'sinatra'
require_relative 'helpers.rb'

# Default file paths
# set :root, File.dirname(__FILE__)
# set :public_folder, settings.root + "public"
# set :views, settings.root + "views"

get '/' do
  @page_title = "Welcome to Explore California"
  render_view :index
end

get '/test' do
  template = "<h1>The current year is <%= Time.now.year %></h1> <h2>Exact time is: <%= Time.now %>"
  render_view template
end

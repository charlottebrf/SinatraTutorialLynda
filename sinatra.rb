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

get '/contact' do
  @page_title = "Explore California: Contact us"
  render_view :contact
end

get '/explorers' do
  @page_title = "Explore California: Explorers"
  render_view :explorers
end

get '/mission' do
  @page_title = "Explore California: Mission"
  render_view :mission
end

get 'resources' do
  @page_title = "Explore California: Resources"
  render_view :resources
end

get '/support' do
  @page_title = "Explore California: Support"
  render_view :support
end

get '/tours' do
  @page_title = "Explore California: Tours"
  @h1_title = "<script>alert('Gotcha');></script>"
  erb :tours
end

get '/test' do
  template = "<h1>The current year is <%= Time.now.year %></h1> <h2>Exact time is: <%= Time.now %>"
  render_view template
end

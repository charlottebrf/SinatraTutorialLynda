## Revisiting Sinatra with Lynda tutorial

https://www.lynda.com/Sinatra-tutorials/

* Simple web application framework (barebones)
* http://www.sinatrarb.com

## Summary:

* Named after Frank Sinatra
* Written in Ruby
* Routes browser requests to code
* Renders templates as a response
* Leanest possible version of Ruby on Rails
* Simple, lightweight web applications
* Fast and low memory requirements
* Add features only as needed
* Create specialised, custom features

## What we need?
- Ruby
- Ruby Gems
- Sinatra (is a ruby gem)
- Thin (lightweight fast webserver, Sinatra will pick it up)

Initialization file (index.rb)
- Require Sinatra RubyGem
- route definition
=> Run server (in terminal ```ruby index.rb``` - open browser)

## Define Routes
```
get '/' do
"Hello World!" - pattern that matches the URL requests
end
```

## Route HTTP methods
- HTTP method + URL-matching pattern + code
- HTTP methods: GET, POST, PUT, PATCH, DELETE
- GET: URLs and links
- POST: form submissions

## Route patterns
- Literal strings
- Regular Expressions
- Wildcard characters
- Named parameters

## Route Parameters
- Named wildcard matches
- Stored in params hash

```
get 'company/*' do
#all splats stored in an array
subject = params[:splat].first
  "You requested: #{subject}"
end

get '/company/:subject' do
  "You requested: #{params[:subject]}"
end

get '/products' do
#GET /products?page=3&sort=alpha
  "Showing products on page #{params[:page]},
sorted by #{params[:sort]}"
end
```
- Query parameters work the same way, they can be stored in params
- It is easier to name our splats from the start

## Redirect requests
- Sending a 302 status code to the browser with the new URL
- Browser gets it and requests it automatically, kind of like ping pong

```
get '/company/history' do
  redirect('/company/about-us')
end
```
- Can be also part of a condition, lets say product id is bigger than 100, redirect to home page

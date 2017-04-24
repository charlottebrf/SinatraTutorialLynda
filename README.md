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

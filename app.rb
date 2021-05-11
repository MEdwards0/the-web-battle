require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'good morning/afternoon/evening'
end

get '/secret' do
  'shh i am a banana'
end

get '/banana' do
  'There are no bananas here.'
end

get '/recipe' do
  "<h1>Testing</h1>

  <ul>
    <li>banana</li>
    <li>two bananas</li>
    <li>three bananas</li>
  </ul>"
end

get '/random-cat' do
  @name = ["Adam", "Emily", "Matt"].sample
  erb(:index) # can be named anything
end

get '/named-cat' do
  p params
  @colour = params[:colour]
  @name = params[:name]
  @cute = params[:cute]
  erb(:index)
end
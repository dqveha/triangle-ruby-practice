require 'sinatra'
require 'sinatra/reloader'
require('./lib/triangle')
also_reload 'lib/**/*.rb'
require 'pry'

get '/' do
  erb(:triangle_input)
end

get '/result' do
  erb(:triangle_output)
end
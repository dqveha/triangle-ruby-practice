require 'sinatra'
require 'sinatra/reloader'
require('./lib/triangle')
also_reload 'lib/**/*.rb'
require 'pry'

post '/' do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  is_triangle = Check_Triangle.new(side1, side2, side3)
  @result = is_triangle.triangle()
  erb(:triangle_input)
end

get '/result' do
  @result = is_triangle.triangle()
  erb(:triangle_output)
end
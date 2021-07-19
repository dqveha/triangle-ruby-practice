require 'sinatra'
require 'sinatra/reloader'
require('./lib/triangle')
also_reload 'lib/**/*.rb'
require 'pry'


get '/' do
  # side1 = params[:side1]
  # side2 = params[:side2]
  # side3 = params[:side3]
  # @is_triangle = Check_Triangle.new(side1, side2, side3)
  erb(:triangle_input)
end

post '/result' do
  side1 = params[:side1]
  @side1 = side1.to_i
  side2 = params[:side2]
  @side2 = side2.to_i
  side3 = params[:side3]
  @side3 = side3.to_i
  is_triangle = Check_Triangle.new(@side1, @side2, @side3)
  @result = is_triangle.triangle()
  erb(:triangle_output)
end
require 'rspec'
require 'triangle'

describe '#Check_Triangle' do
  it("should create an empty triangle object") do
    is_triangle = Check_Triangle.new("side1","side2","side3")   
    expect(is_triangle.side1).to(eq('side1'))
  end

  it("should create a triangle object with side lengths") do
    is_triangle = Check_Triangle.new(1, 2, 1)
    expect(is_triangle.side1).to(eq(1))
    expect(is_triangle.side2).to(eq(2))
    expect(is_triangle.side3).to(eq(1))
  end

  it("should check the triangle type") do
    is_triangle = Check_Triangle.new(1,2,2)
    expect(is_triangle.triangle).to(eq('This is an isosceles triangle!'))
  end
end
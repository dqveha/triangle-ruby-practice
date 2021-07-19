class Check_Triangle
  attr_accessor(:side1, :side2, :side3)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

def triangle
  if @side1 === @side2 && @side2 === @side3
    return "This is an equilateral triangle!"
  elsif ((side1 !== side2) && (side1 !== side3) && (side2 !== side3))
    return "This is a scalene triangle!"
  elsif (side1 + side2 <= side3) || (side2 + side3 <= side1) || (side1 + side3 <= side2)
    return "YOU'RE A SQUARE WITHOUT A FOURTH SIDE."
  else
    return "This is an isosceles triangle!"
end

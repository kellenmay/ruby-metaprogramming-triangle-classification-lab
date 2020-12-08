class Triangle
  # write code here

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

def valid?(side_one, side_two, side_three)
  if side_one + side_two >= side_three || side_two + side_three >= side_one || side_one + side_three >= side_two && side_one > 0 && side_two > 0 && side_three > 0  
    true
  else
    false
  end
end

def kind(side_one, side_two, side_three)
  if !valid?
    begin
      raise TriangleError
    rescue TriangleError => error
        puts error.message
    end
   elsif side_one == side_two && side_two == side_three && side_one == side_three 
      :equilateral
  elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
  else
      :scalene
    end
  end

end


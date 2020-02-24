class Triangle
  attr_accessor :s1, :s2, :s3, :sides
  
  def initialize (side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @sides = [@s1, @s2, @s3]
    @sides.sort!
  end
  
  def kind
    if @sides.any? {|side| side <= 0}
      raise TriangleError
    elsif @sides[2] <= (@sides[0] + @sides[1])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
end

class Triangle
  attr_accessor :s1, :s2, :s3
  
  def initialize (side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
  end
  
  def kind
    
  end
  
  class TriangleError < StandardError
    
    
  end
end

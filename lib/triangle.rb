class Triangle
  attr_accessor :s1, :s2, :s3
  
  @sides = []
  
  def initialize (side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @sides << @s1, @s2, @s3
  end
  
  def kind
    @sides.sort!
    if @sides.each {|side| side !> 0} || @sides[2] <= (@sides[0] + @sides[1])
      begin
        raise TriangleError
        rescue TriangleError => error 
        error.message
      end
  end
  
  class TriangleError < StandardError
    
    
  end
end

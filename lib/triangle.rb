class Triangle
  attr_accessor :first, :second, :third
  
  def initialize(side1, side2, side3)
    @first = side1
    @second = side2
    @third = side3
  end

  def kind
    xy = @first + @second
    yz = @second + @third
    xz = @first + @third

    if (xy > @third && yz > @first && xz > @second && 
      @first > 0 && @second > 0 && @third > 0)
      if (@first == @second && @second == @third)
        return :equilateral
      elsif (@first == @second || @first == @third || @second == @third)
        return :isosceles
      else
        return :scalene
      end

    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end

end
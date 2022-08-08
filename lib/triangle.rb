require 'pry'

class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validTriangle
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @c == @a
      :isosceles
    else
      :scalene
    end
  end

  def third_length?
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def sides_over_zero?
    @a > 0 && @b > 0 && @c > 0
  end

  def validTriangle
    if third_length? && sides_over_zero?
    else 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end

class Triangle
  #assigning variable 'a' 
  @a : Float32 
  #assigning variable 'b' 
  @b : Float32
  #assigning variable 'c' 
  @c : Float32
  def initialize(sides)
    #defining a, b, and c to a 32-bit float so it can handle floats such as 0.5
    @a = sides[0].to_f32
    @b = sides[1].to_f32
    @c = sides[2].to_f32
    #checks if side a is 0 and if the triangle is equilateral, then give an error
    if @a == 0 && self.equilateral?
      raise ArgumentError.new()
    end
  # checks each incorrect situation
    if @a + @b < @c
      raise ArgumentError.new()
    end
    if @b + @c < @a
      raise ArgumentError.new()
    end
    if @a + @c < @b
      raise ArgumentError.new()
    end
  end
# checks if triangle is equilateral with the in-built 'equillateral?'
  def equilateral?
    @a == @b == @c
  end
# checks if triangle is isosceles with the in-built 'isosceles?'
  def isosceles?
    @a == @b || @b == @c || @a == @c
  end
# checks if triangle is scalene with the in-built 'scalene?'
  def scalene?
    (@a != @b) && (@b != @c) && (@a != @c)
  end
end
class Triangle
  
#   def initialize(side_1,side_2,side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end
  
#   def kind()
#     if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
#       raise TriangleError
#     elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
#       raise TriangleError
#     else
#       if (@side_1 == @side_2) && (@side_2 == @side_3)
#         :equilateral
#       elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
#         :isosceles
#       elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
#         :scalene
#       #   else (@side_1 != 0) || (@side_2 != 0) || (@side_3 != 0)
#       # raise TriangleError
#       end
#     end

#   end
  
# end


def kind(a, b, c)
  a, b, c = [a, b, c].sort
  if a <= 0 or a + b <= c
  raise TriangleError
   :equilateral if a == c
   :isosceles if a == b or b == c
   :scalene
end
end 
class TriangleError < StandardError
  def message
    "This is an illegal triangle"
  end
end


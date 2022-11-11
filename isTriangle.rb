# frozen_string_literal: true
# Implement a function that accepts 3 integer values a, b, c. The function should return true if a triangle can be built with the sides of given length and false in any other case.
# (In this case, all triangles must have surface greater than 0 to be accepted).

def is_triangle(a, b, c)
  puts a + b > c && a + c > b && c + b > a
  # your code
end

is_triangle(7, 2, 2)

# def isTriangle(a,b,c)
#   a, b, c = [a, b, c].sort
#   a + b > c
# end
# 101-109 - Small Problems > Medium 2 > Triangle Sides

# A triangle is classified as follows:

# - equilateral All 3 sides are of equal length
# - isosceles 2 sides are of equal length, while the 3rd is different
# - scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides
# must be greater than the length of the longest side, and all sides must
# have lengths greater than 0: if either of these conditions is not satisfied,
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene,
# or :invalid depending on whether the triangle is equilateral, isosceles,
# scalene, or invalid.

def triangle(x, y, z)
  return :invalid if x == 0 || y == 0 || z == 0
  array = [x, y, z].sort
  return :invalid if array[0] + array[1] < array[2]
  return :equilateral if x == y && y == z
  return :isosceles if array[1] == array[2]
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# Their solution

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   largest_side = sides.max

#   case
#   when 2 * largest_side > sides.reduce(:+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side1 == side3 || side2 == side3
#     :isosceles
#   else
#     :scalene
#   end
# end
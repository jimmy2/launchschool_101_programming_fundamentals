# 101-109 - Small Problems > Easy 6 > Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle
# whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images
# below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

=begin

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

=end

def triangle(int)
  string = " " * int
  array = string.chars
  int.times do
    array.shift
    array << "*"
    puts array.join
  end
end

puts triangle(5)
puts triangle(9)

# Their solution

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
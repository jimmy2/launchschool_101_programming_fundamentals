# 101-109 - Small Problems > Medium 1 > Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may 
# assume that the argument will always be an odd integer.

=begin
  
Examples

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
  
=end

def diamond(int)
  whitespace = " "
  star = "*"
  row_spaces, col_spaces, i = int, 0, 1
  while col_spaces < row_spaces
    col_spaces += 1
    white_no = (row_spaces - i) / 2
    if white_no > 0
      puts (whitespace * white_no) + (star * i)
    else
      puts star * i
    end
    if (i <= int) && (col_spaces > int/2)
      i -= 2
    else
      i += 2
    end
  end
end

diamond(1)
diamond(3)
diamond(9)

# Their solution

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
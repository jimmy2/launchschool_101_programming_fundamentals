# 101-109 - Small Problems > Easy 6 > Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays that contain the 
# first half and second half of the original Array, respectively. If the original array contains 
# an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(array)
  new_array = [[],[]]
  half_way = array.length / 2.0
  array.each_with_index do | element, index |
    if index < half_way
      new_array[0] << element
    else
      new_array[1] << element
    end
  end
  new_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

p halvsies([1, 2, 3, 4]) # => [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) # => [[1, 5, 2], [4, 3]]
p halvsies([5]) # => [[5], []]
p halvsies([]) # => [[], []]

# Their solution

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
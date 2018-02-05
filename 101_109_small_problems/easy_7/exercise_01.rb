# 101-109 - Small Problems > Easy 7 > Combine Two Lists

# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the 
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the 
# same number of elements.

# def interleave(array1, array2)
#   output = []
#   for i in 1..array1.size
#     output << array1[i - 1]
#     output << array2[i - 1]
#     i += 1
#   end
#   output
# end

# Further Exploration - Array#zip

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3], ['a', 'b', 'c']) # => [1, 'a', 2, 'b', 3, 'c']

# Their solution

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end
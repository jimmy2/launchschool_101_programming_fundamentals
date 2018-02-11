# 101-109 - Small Problems > Easy 7 > Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each pair
# of numbers from the arguments that have the same index. You may assume that 
# the arguments contain the same number of elements.

# def multiply_list(array1, array2)
#   output = []
#   for i in 0...array1.length
#     output << array1[i] * array2[i]
#   end
#   output
# end

# Further Exploration - Array#zip

def multiply_list(array1, array2)
  array1.zip(array2).map { | sub_array | sub_array.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([3, 5, 7], [9, 10, 11]) # => [27, 50, 77]

# Their solution

# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end
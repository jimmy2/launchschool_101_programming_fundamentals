# 101-109 - Small Problems > Easy 7 > Multiply All Pairs

# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays. 
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(array1, array2)
  output = []
  array1.each do | sub_array_1 |
    array2.each do | sub_array_2 |
      output << sub_array_1 * sub_array_2
    end
  end
  output.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) # => [2, 4, 4, 6, 8, 8, 12, 16]

# Their solution

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end
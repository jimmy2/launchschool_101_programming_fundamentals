# 101-109 - Small Problems > Easy 1 > Array Average

# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty
# and the numbers will always be positive integers.

def average(array)
  sum = 0
  array.each { |value| sum += value }
  sum / array.length
end

puts average([1, 5, 87, 45, 8, 8])

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Their solution

# def average(numbers)
#   sum = numbers.reduce(:+)
#   sum / numbers.count
# end

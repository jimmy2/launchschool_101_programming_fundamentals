# 101-109 - Small Problems > Easy 1 > List of Digits

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(integer)
  integer = integer.to_s.split('')
  integer.map { |i| i.to_i }
  # integer.to_s.chars.map(&:to_i)
  # does something similar more eloquently
end

p digit_list(12_345)

puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
puts digit_list(7) == [7] # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4] # => true

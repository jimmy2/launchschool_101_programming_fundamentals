# 101-109 - Small Problems > Easy 1 > Sum of Digits

# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits.

def sum(integer)
  addition = 0
  i = 1
  integer = integer.to_s
  while i <= integer.length
    addition += integer[i - 1].to_i
    i += 1
  end
  addition
end

puts sum(12_345)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Their solution

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

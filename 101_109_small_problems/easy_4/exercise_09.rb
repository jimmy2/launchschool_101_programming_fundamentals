# 101-109 - Small Problems > Easy 4 > Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple numeric strings
# to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s,
# String(), Kernel#format, etc. Your method should do this the old-fashioned way and 
# construct the string by analyzing and manipulating the number.

def integer_to_string(integer)
  power = 1 
  return '0' if integer == 0
  while integer >= power
    power *= 10
  end
  string = ""
  power /= 10
  string << integer_to_string_conversion(integer / power)
  while power >= 10
    string << integer_to_string_conversion(integer % power / (power / 10))
    power /= 10
  end
  string
end

def integer_to_string_conversion(integer)
  case integer
  when 1 then '1'
  when 2 then '2'
  when 3 then '3'
  when 4 then '4'
  when 5 then '5'
  when 6 then '6'
  when 7 then '7'
  when 8 then '8'
  when 9 then '9'
  when 0 then '0'
  else "x"
  end
end

p integer_to_string(4321)
p integer_to_string(21)
p integer_to_string(321)
p integer_to_string(43321)

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# Their solution

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end
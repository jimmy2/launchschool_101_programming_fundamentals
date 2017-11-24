# 101-109 - Small Problems > Easy 4 > Convert a Signed Number to a String!

# In the previous exercise, you developed a method that converts non-negative numbers to strings.
# In this exercise, you're going to extend that method by adding the ability to represent
# negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. 
# You may, however, use integer_to_string from the previous exercise.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# Original solution

# def signed_integer_to_string(number)
#   output = ""
#   if number > 0
#     output = integer_to_string(number).prepend("+")
#   elsif number == 0
#     output = "0"
#   else
#     number = number * -1
#     output = integer_to_string(number).prepend("-")
#   end
#   output
# end

# Refactored solution

def signed_integer_to_string(number)
  output = ""
  case number <=> 0
  when -1
    number *= -1
    output << "-"
  when +1 then output << "+"
  else output = ""
  end
  output << integer_to_string(number)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

# Their solution

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end
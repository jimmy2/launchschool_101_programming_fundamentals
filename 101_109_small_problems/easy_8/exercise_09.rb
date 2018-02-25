# 101-109 - Small Problems > Easy 8 > Convert number to reversed array of digits

# Write a method that takes a positive integer as an argument and returns that 
# number with its digits reversed.

def reversed_number(integer)
  integer.to_s.chars.reverse.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1

p reversed_number(12345) # => 54321
p reversed_number(12213) # => 31221
p reversed_number(456) # => 654
p reversed_number(12000) # => 21
p reversed_number(1) # => 1

# Their solution

def reversed_number(number)
  string = number.to_s
  digits = string.chars
  reversed_digits = digits.reverse
  reversed_string = reversed_digits.join('')
  reversed_string.to_i
end

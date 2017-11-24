# 101-109 - Small Problems > Easy 4 > Convert a String to a Number!

# The String#to_i method converts a string of numeric characters (including an optional 
# plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer())
# behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
# assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way
# and calculate the result by analyzing the characters in the string.


def string_to_integer(string)
  sum = 0
  strength = string.length
  for i in 0...string.length do
    integer = get_number(string[i])
    sum += integer * get_strength(strength)
    i += 1
    strength -= 1
  end
  sum
end

def get_number(string)
  case string
  when '1'
    1
  when '2'
    2
  when '3'
    3
  when '4'
    4
  when '5'
    5
  when '6'
    6
  when '7'
    7
  when '8'
    8
  when '9'
    9
  else
    0
  end
end

def get_strength(strength)
  case strength
  when 1
    1
  when 2
    10
  else
    10**(strength - 1)
  end
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('1034564321') == 1_034_564_321

p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('1034564321')

# Their solution

=begin

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

=end
# 101-109 - Small Problems > Easy 1 > Stringy Strings

# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

def stringy(integer)
  i = 1
  output = ''
  while i <= integer
    output += '1' if i.odd?
    output += '0' if i.even?
    i += 1
  end
  output
end

puts stringy(12)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Their solution

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

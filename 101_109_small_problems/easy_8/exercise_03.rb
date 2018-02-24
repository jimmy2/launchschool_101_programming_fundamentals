# 101-109 - Small Problems > Easy 8 > Leading Substrings

# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

def substrings_at_start(string)
  array = []
  for i in (0..string.length - 1)
    array << string[0..i]
  end
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p substrings_at_start('abc') # => ['a', 'ab', 'abc']
p substrings_at_start('a') # => ['a']
p substrings_at_start('xyzzy') # => ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Their solution

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
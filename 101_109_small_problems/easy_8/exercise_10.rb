# 101-109 - Small Problems > Easy 8 > Get The Middle Character

# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

def center_of(string)
  middle = string.length / 2
  if string.length.odd?
    string[middle]
  else
    string.slice(middle - 1..middle)
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

p center_of('I love ruby') # => 'e'
p center_of('Launch School') # => ' '
p center_of('Launch') # => 'un'
p center_of('Launchschool') # => 'hs'
p center_of('x') # => 'x'

# Their solution

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
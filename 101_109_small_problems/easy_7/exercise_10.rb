# 101-109 - Small Problems > Easy 7 > The End Is Near But Not Here

# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(string)
  string.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p penultimate('last word') # => 'last'
p penultimate('Launch School is great!') # => 'is'
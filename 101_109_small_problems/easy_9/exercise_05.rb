# 101-109 - Small Problems > Easy 9 > Uppercase Check

# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

def uppercase?(string)
  string = string.delete('^A-Za-z')
  string.each_char do | char |
    return false if char == char.downcase
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

p uppercase?('t') # => false
p uppercase?('T') # => true
p uppercase?('Four Score') # => false
p uppercase?('FOUR SCORE') # => true
p uppercase?('4SCORE!') # => true
p uppercase?('') # => true

# Their solution

def uppercase?(string)
  string == string.upcase
end
# 101-109 - Small Problems > Easy 3 > Palindromic Strings (Part 1)

# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(input)
  half_way = input.size / 2
  half_way += 1 if input.size.odd?
  i = 0
  x = -1
  while i < half_way
    return false if input[i] != input[x]
    i += 1
    x -= 1
  end
  true
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# strings

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
p palindrome?('abcdefedabc')
p palindrome?('abcdefedcba')

# arrays

p palindrome?([1,2,3,4,3,2,1])
p palindrome?([1,2,3,4,5,6])

# Their solution

# def palindrome?(string)
#   string == string.reverse
# end
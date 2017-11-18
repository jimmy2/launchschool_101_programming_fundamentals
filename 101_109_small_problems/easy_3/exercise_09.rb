# 101-109 - Small Problems > Easy 3 > Palindromic Strings (Part 2)

# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be 
# case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you 
# wrote in the previous exercise.

def real_palindrome?(string)
  string.delete!(", !'")
  string.downcase == string.reverse.downcase
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
p real_palindrome?('1 2f3,a,ba3f2 1')

# Their solution

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

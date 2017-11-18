# 101-109 - Small Problems > Easy 3 > Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)
p palindromic_number?(12345654321)
p palindromic_number?(123_245_123)
p palindromic_number?(1_234_554_321)
p palindromic_number?(012345543210) # doesn't work with leading zeros
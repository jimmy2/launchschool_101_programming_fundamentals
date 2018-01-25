# 101-109 - Small Problems > Easy 6 > Delete vowels

# Write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  array.map do | string |
    string.delete('AEIOUaeiou')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # => %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) # => %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) # => ['BC', '', 'XYZ']

# Their solution

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

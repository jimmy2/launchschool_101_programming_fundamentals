# 101-109 - Small Problems > Easy 7 > Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

def letter_case_count(string)
  hash = Hash.new(0)
  hash[:lowercase] = string.count('a-z')
  hash[:uppercase] = string.count('A-Z')
  hash[:neither] = string.count('^A-Za-z')
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

p letter_case_count('abCdef 123') # => { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') # => { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') # => { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') # => { lowercase: 0, uppercase: 0, neither: 0 }

# Their solution

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
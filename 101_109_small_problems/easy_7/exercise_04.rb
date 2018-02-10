# 101-109 - Small Problems > Easy 7 > Swap Case

# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. All other characters
# should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  for i in 0...string.length
    if string[i] =~ /[a-z]/
      string[i] = string[i].upcase
    elsif string[i] =~ /[A-Z]/
      string[i] = string[i].downcase
    end
  end
  string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

p swapcase('CamelCase') # => 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') # => 'tONIGHT ON xyz-tv'

# Their solution

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
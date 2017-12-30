# 101-109 - Small Problems > Easy 5 > ASCII String Value

# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the ASCII
# values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(string)
  value = 0
  for i in (0..string.length-1)
    value += string[i].ord
  end
  value
end

p ascii_value('Four score')
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Their solution

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

# Further Exploration

char = "j"

# char.ord.mystery == char
p char.ord
p char.ord.chr
p char.ord.chr == char
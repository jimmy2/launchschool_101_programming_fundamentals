# 101-109 - Small Problems > Easy 8 > Double Char (Part 1)

# Write a method that takes a string, and returns a new string
# in which every character is doubled.

def repeater(string)
  double = ""
  for i in 0...string.length
    double << string[i] * 2
  end
  double
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

p repeater('Hello') # => "HHeelllloo"
p repeater("Good job!") # => "GGoooodd  jjoobb!!"
p repeater('') # => ''

# Their solution

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

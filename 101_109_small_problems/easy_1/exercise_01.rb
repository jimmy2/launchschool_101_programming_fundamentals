# 101-109 - Small Problems > Easy 1 > Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)

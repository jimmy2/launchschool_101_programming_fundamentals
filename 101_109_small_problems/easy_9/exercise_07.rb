# 101-109 - Small Problems > Easy 9 > Name Swapping

# Write a method that takes a first name, a space, and a last name passed as
# a single String argument, and returns a string that contains the last name,
# a comma, a space, and the first name.

def swap_name(string)
  output = string.split(" ")
  output[0], output[1] = output[1], output[0]
  output.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name('Joe Roberts') # => 'Roberts, Joe'

# Their solution

def swap_name(name)
  name.split(' ').reverse.join(', ')
end
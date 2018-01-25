# 101-109 - Small Problems > Easy 6 > Does My List Include This?

# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

def include?(array, object)
  array.each do | element |
    return true if element.eql?(object)
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

p include?([1,2,3,4,5], 3) # => true
p include?([1,2,3,4,5], 6) # => false
p include?([], 3) # => false
p include?([nil], nil) # => true
p include?([], nil) # => false

# Their solution

# The easy way

def include?(array, value)
  !!array.find_index(value)
end

# A slightly harder way

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

# practice_problem_02.rb

# Practice Problems: Methods and More Methods

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2

# count only counts an element if the block's return value evaluates to true

# https://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-count

# Returns the number of items in enum through enumeration. 
# If an argument is given, the number of items in enum that are equal to item are counted.
# If a block is given, it counts the number of elements yielding a true value.
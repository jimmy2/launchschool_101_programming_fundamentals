# practice_problem_09.rb

# Practice Problems: Methods and More Methods

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, 'bear']

# hash#map returns an array.
# the first iteration is false, so nil is inserted in the array.
# map returns an array the same size as the hash.

# https://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-map
# Returns a new array with the results of running block once for every element in enum.
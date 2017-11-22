# practice_problem_03.rb

# Practice Problems: Methods and More Methods

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]

# puts returns nil, nil is falsey, reject returns false values

# https://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-reject
# Returns an array for all elements of enum for which the given block returns false.
# If no block is given, an Enumerator is returned instead.
# practice_problem_08.rb

# Practice Problems: Methods and More Methods

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => [1, 2]

# arr
# => [1, 2, 3, 4, 5] 
# not destructive

# https://ruby-doc.org/core-2.2.0/Array.html#method-i-take
# Returns first n elements from the array.
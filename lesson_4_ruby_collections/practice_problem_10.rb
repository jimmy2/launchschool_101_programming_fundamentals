# practice_problem_10.rb

# Practice Problems: Methods and More Methods

# What is the block's return value in the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# 2
# 3
# => [1, nil, nil]

# The first iteration has num inserted in the array, 
# the next two iterations put a value, but return nil.


# additional_problem_08.rb

# Practice Problems: Additional Practice

# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers

# 1
# 3
# [3, 4]

# prints 1, removes 1, (now 2 at index 0), next iteration, prints 3, removes 2, finishes iteration, ends

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers

# 1
# 2
# [1,2]
# prints 1, removes 4, next iteration, prints 2, removes 3, finishes iteration, ends

# iterators operate on the original array in real time.
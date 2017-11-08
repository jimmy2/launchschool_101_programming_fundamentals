# Question 1

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Expect
# 1
# 2
# 2
# 3

# uniq doesn't mutate the caller (as opposed to uniq!)
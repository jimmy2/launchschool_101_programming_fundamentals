# question_04.rb

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do 
# (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)

# => [1, 3, 4, 5]
# delete the element at index 1 (array index starts at 0)

numbers.delete(1)
# => [2, 3, 4, 5]
# delete the element with the value of 1
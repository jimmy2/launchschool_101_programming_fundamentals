# 101-109 - Small Problems > Easy 9 > Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

def buy_fruit(array)
  array.map { | fruit, number | [fruit] * number }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
# => ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Their solution

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

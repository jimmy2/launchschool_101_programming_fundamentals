# 101-109 - Small Problems > Easy 6 > Reversed Arrays (Part 2)

# Write a method that takes an Array, and returns a new Array with the elements of the
# original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the
# method you wrote in the previous exercise.

def reverse(array)
  new_array = array.dup
  counter, finish, max = 0, -1, (array.length)
  while counter < max
    new_array[finish] = array[counter]
    counter += 1
    finish -= 1
  end
  new_array
end

# Further Exploration - An even shorter solution is possible by using either inject or each_with_object.

# def reverse(array)
#   new_array = array.each_with_object([]) { | element, coll | coll.unshift(element) }
# end

# def reverse(array)
#   array.inject([], :unshift)
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(%w(a b c d e))
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

# Their solution

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end
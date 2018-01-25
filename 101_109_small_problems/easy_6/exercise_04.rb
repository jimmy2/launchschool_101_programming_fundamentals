# 101-109 - Small Problems > Easy 6 > Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements in place; that is,
# mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  if array.length > 2
    repetitions, start, finish = (array.length / 2), 0, -1
    while start < repetitions 
      array[start], array[finish] = array[finish], array[start]
      start += 1
      finish -= 1
    end
  end
  array
end


list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = %w(a b c d e f)
p reverse!(list) # => ["f", "e", "d", "c", "b", "a"]
p list == ["f", "e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse!(list) # => []
p list == []

# Their solution

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
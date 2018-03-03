# 101-109 - Small Problems > Medium 1 > Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  clone = array.dup
  first = clone.shift
  clone << first
  clone
end

def rotate_string(string)
  if string.length >= 2
    string[1..-1] + string[0]
  else
    string
  end
end

def rotate_integer(int)
  rotate_string(int.to_s)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4] 

p rotate_array([7, 3, 5, 2, 9, 1]) # => [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) # => ['b', 'c', 'a']
p rotate_array(['a']) # => ['a']

p rotate_string("hello")
p rotate_string("")
p rotate_string("p")
p rotate_string("ba")

p rotate_integer(1234)
p rotate_integer(0)
p rotate_integer(1)
p rotate_integer(10000)

# Their answer

def rotate_array(array)
  array[1..-1] + [array[0]]
end
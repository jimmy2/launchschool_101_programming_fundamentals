# 101-109 - Small Problems > Easy 3 > Odd Lists

# Write a method that returns an Array that contains every other element of an Array
# that is passed in as an argument. The values in the returned list should be those values 
# that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(array)
  new_array = []
  i = 0
  while i < array.size
    new_array << array[i]
    i += 2
  end
  new_array
end

def eventies(array)
  new_array = []
  i = 1
  while i < array.size
    new_array << array[i]
    i += 2
  end
  new_array
end

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

p oddities([2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123])
p oddities([]) 
p eventies([2, 3, 4, 5, 6]) 
p eventies(['abc', 'def']) 
p eventies([123])
p eventies([]) 
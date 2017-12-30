# Practice Problem 13

# Given the following data structure, return a new array containing
# the same sub-arrays as the original but ordered logically according
# to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

output = arr.sort_by do |sub_array|
  sub_array.select do | element |
    element.odd?
  end
end

p output

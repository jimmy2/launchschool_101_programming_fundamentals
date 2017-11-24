# 101-109 - Small Problems > Easy 4 > Running Totals

# Write a method that takes an Array of numbers, and returns an Array 
# with the same number of elements, and each element has the running total
# from the original Array.

def running_total(array)
  new_array = []
  i = 0
  while i <= array.length - 1
    new_array << array[0..i].reduce(:+)
    i += 1
  end
  new_array
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Their solution

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Practice Problem 1

# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

result = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p result

# result = arr.sort_by do |string|
#   string.to_i
# end

# p result.reverse
# 101-109 - Small Problems > Easy 1 > How Many?

# Write a method that counts the number of occurrences of each element
# in a given array.
# Once counted, print each element alongside the number of occurrences.


def count_occurrences(array)
  hash = {}
  array.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  hash.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# Their solution

# def count_occurrences(array)
#   occurrences = {}

#   array.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# 101-109 - Small Problems > Easy 2 > Even Numbers

for number in (1..99)
  puts number if number.even?
end

array = (1..99).to_a
puts array.select { |number| number % 2 == 0 }

1.upto(99) { |number| number.even? }

# Their solution

# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end
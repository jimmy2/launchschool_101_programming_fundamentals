# 101-109 - Small Problems > Easy 2 > Odd Numbers

for number in (1..99)
  puts number if number.odd?
end

array = (1..99).to_a
puts array.select { |number| number % 2 == 1 }

1.upto(99) { |number| number.odd? }

# Their solution

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end
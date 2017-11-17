# 101-109 - Small Problems > Easy 3 > Squaring an Argument

# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

def multiply(first, second)
  first * second
end

def square(integer)
  multiply(integer, integer)
end

def power_of_n(integer)
  loop_times = integer - 1
  answer = integer
  loop_times.times do
    answer = multiply(answer, integer)
  end
  answer
end

puts power_of_n(3)
puts power_of_n(4)
puts power_of_n(5)
puts square(5) == 25
puts square(-8) == 64
puts square(5)
puts square(-8)
puts power_of_n(3) == 27
puts power_of_n(4) == 256
puts power_of_n(5) == 3125
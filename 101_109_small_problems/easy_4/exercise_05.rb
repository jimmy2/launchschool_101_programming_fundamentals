# 101-109 - Small Problems > Easy 4 > Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 
# and some other number, and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multiples_of_sum(integer, multiple)
  no_of_multiples = integer / multiple
  array = []
  x = 1
  while x <= no_of_multiples
    array << (multiple * x)
    x += 1
  end
  array
end

def multisum(integer)
  total = multiples_of_sum(integer, 3) + multiples_of_sum(integer, 5)
  total.uniq!
  total.reduce(:+).to_i
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
p multisum(24)

# Their solution

=begin

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

=end
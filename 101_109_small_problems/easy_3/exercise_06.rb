# 101-109 - Small Problems > Easy 3 > Exclusive Or

# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(expression1, expression2)
  if expression1 == true && expression2 == true
    false
  elsif expression1 == false && expression2 == false
    false
  else
    true
  end
end

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# Their solution

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end
# 101-109 - Small Problems > Easy 1 > What's my Bonus?

# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, boolean)
  return 0 if boolean == false
  (salary / 2)
end

puts calculate_bonus(2_800, true)
puts calculate_bonus(2_800, false)

puts calculate_bonus(2_800, true) == 1400
puts calculate_bonus(1_000, false) == 0
puts calculate_bonus(50_000, true) == 25_000

# Their solution

# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end

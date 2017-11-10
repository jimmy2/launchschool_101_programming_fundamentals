# 101-109 - Small Problems > Easy 2 > Tip calculator

def calculate_tip(bill, percentage)
  (bill * (percentage / 100))
end

def calculate_total(bill, tip)
  (bill + tip)
end

def print_as_money(value)
  "$#{sprintf('%.2f', value)}"
end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = calculate_tip(bill, tip_percentage)
total = calculate_total(bill, tip)

puts "The tip is #{print_as_money(tip)}"
puts "The total is #{print_as_money(total)}"
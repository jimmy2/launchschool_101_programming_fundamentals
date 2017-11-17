# 101-109 - Small Problems > Easy 3 > Searching 101

# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number 
# appears amongst the first 5 numbers.

def prompt(message)
  puts "==> #{message}"
end

order = ["1st", "2nd", "3rd", "4th", "5th", "last"]
increment = 0
number_array = []

while increment < order.length
  prompt("Enter the #{order[increment]} number:")
  number_array << gets.chomp.to_i
  increment += 1
end

last_number = number_array.pop

if number_array.include?(last_number)
  puts "The number #{last_number} appears in #{number_array}."
else
  puts "The number #{last_number} does not appear in #{number_array}."
end

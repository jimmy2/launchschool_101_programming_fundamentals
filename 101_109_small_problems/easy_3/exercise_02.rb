# 101-109 - Small Problems > Easy 3 > Arithmetic Integer

# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

def prompt(message)
  puts "==> #{message}"
end

prompt "Enter the first number:"
first_no = gets.chomp.to_i
prompt "Enter the second number:"
second_no = gets.chomp.to_i

prompt "#{first_no} + #{second_no} = #{first_no + second_no}"
prompt "#{first_no} - #{second_no} = #{first_no - second_no}"
prompt "#{first_no} * #{second_no} = #{first_no * second_no}"
begin
  prompt "#{first_no} / #{second_no} = #{first_no / second_no}"
rescue ZeroDivisionError => e
  puts e.message
end
prompt "#{first_no} % #{second_no} = #{first_no % second_no}"
prompt "#{first_no} ** #{second_no} = #{first_no ** second_no}"
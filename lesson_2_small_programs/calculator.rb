# Walk-through: Calculator

# Pseudocode

# Ask the user for two numbers
# Ask the user for an operation (+,-,*,/)
# Perform the operation using the two numbers
# Output the result

Kernel.puts("Welcome to the Calculator!")

Kernel.puts("Please enter your first number...")
number1 = Kernel.gets().chomp()

Kernel.puts("Please enter your second number...")
number2 = Kernel.gets().chomp()

Kernel.puts("Please enter the operator: 1 = add, 2 = subtract, 3 = multiply, 4 = divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else
  result = number1.to_f / number2.to_f
end

Kernel.puts("The result is: #{result}")
    
  

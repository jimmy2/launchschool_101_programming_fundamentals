# multiply_numbers.rb

# Continuing on with the idea of building generic methods, let's update our
# double_numbers method to not only be able to double the values in an array, 
# but to multiply by any number. For example, let's create a method called
# multiply that can take an additional argument to determine the transformation criteria.

def multiply(numbers, strength)
  output = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    output << current_number *= strength

    counter += 1
  end

  output
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p multiply(my_numbers, 5) # => [5, 20, 15, 35, 10, 30]

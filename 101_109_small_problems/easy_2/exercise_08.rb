# 101-109 - Small Problems > Easy 2 > Sum or Product of Consecutive Integers

def prompt(message)
  puts ">> #{message}"
end

def calculate_sum(integer)
  # sum = 0
  # for i in (1..integer) 
  #   sum += i
  # end
  sum = (1..integer).reduce(:+)
  friendly(sum)
end

def calculate_product(integer)
  # product = 1
  # for i in (1..integer)
  #   product *= i
  # end
  product = (1..integer).reduce(1, :*)
  friendly(product)
end

def friendly(integer)
  # Adds commas if big number
  integer.to_s.reverse.scan(/\d{3}|.+/).join(",").reverse
end


def print_sum(sum, integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
end

def print_product(product, integer)
  puts "The sum of the integers between 1 and #{integer} is #{product}."
end

integer = nil
loop do
  prompt "Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
  break if integer > 0
  prompt "Sorry, you can't enter zero or negative numbers"
end

response = ""
loop do
  prompt "Enter 's' to compute the sum, 'p' to compute the product."
  response = gets.chomp.downcase
  break if %w(s p).include?(response)
  prompt "Sorry, please enter 's' or 'p'"
end

if response == 's'
  sum = calculate_sum(integer)
  print_sum(sum, integer)
else
  product = calculate_product(integer)
  print_product(product, integer)
end


# 101-109 - Small Problems > Medium 1 > Fibonacci Numbers (Last Digit)

# In the previous exercise, we developed a procedural method for computing
# the value of the nth Fibonacci numbers. This method was really fast, computing
# the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit
# of the nth Fibonacci number.

def fibonacci(int)
  return 1 if int <= 2
  n1, n2, value = 0, 1, 0
  (int-1).times do
    value = n1 + n2
    n1, n2 = n2, value
  end
  value
end

def fibonacci_last(int)
  fibonacci(int).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)

p fibonacci_last(15) == 0
p fibonacci_last(20) == 5
p fibonacci_last(100) == 5
p fibonacci_last(100_001) == 1
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

# Their solution (much quicker)

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end
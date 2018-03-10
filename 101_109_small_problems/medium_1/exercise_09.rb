# 101-109 - Small Problems > Medium 1 > Fibonacci Numbers (Procedural)

# In the previous exercise, we developed a recursive solution to calculating the 
# nth Fibonacci number. In a language that is not optimized for recursion, some 
# (not all) recursive methods can be extremely slow and require massive quantities
# of memory and/or stack space.

# Ruby does a reasonably good job of handling recursion, but it isn't designed 
# for heavy recursion; as a result, the Fibonacci solution is only useful up to about
# fibonacci(40). With higher values of nth, the recursive solution is impractical. 
# (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

def fibonacci(int)
  return 1 if int <= 2
  n1, n2, value = 0, 1, 0
  (int-1).times do
    value = n1 + n2
    n1, n2 = n2, value
  end
  value
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(3) 
p fibonacci(4)
p fibonacci(5) 
p fibonacci(100) == 354224848179261915075

p fibonacci(20) # => 6765
p fibonacci(100) # => 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

# Their solution

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

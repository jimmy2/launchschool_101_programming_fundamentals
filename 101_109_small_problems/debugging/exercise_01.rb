# 101-109 - Small Problems > Debugging > Countdown

# Our countdown to launch isn't behaving as expected. Why? Change the code
# so that our program successfully counts down from 10 to 1.

#BEFORE

=begin
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'
=end

# AFTER

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do # refactored 10
  puts counter
  counter = decrease(counter) # Reassign counter's new value
end

puts 'LAUNCH!'

# Further Exploration

# We specify 10 two times, which looks a bit redundant. It should be possible
# to specify it only once. Can you refactor the code accordingly?

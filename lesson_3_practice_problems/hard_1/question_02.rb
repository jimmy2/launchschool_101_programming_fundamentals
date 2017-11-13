# question_02.rb

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# greetings = hash a: "hi"
# informal_greeting = "hi" (string) same reference to original object
# informal_greeting mutate string object => "hi there"
# puts greetings => {:a => 'hi there'}
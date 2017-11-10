# 101-109 - Small Problems > Easy 2 > Greeting a user

puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end
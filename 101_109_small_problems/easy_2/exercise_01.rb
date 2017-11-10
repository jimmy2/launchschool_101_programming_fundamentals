# 101-109 - Small Problems > Easy 2 > How old is Teddy?

def generate_age
  rand(20..200)
end

def output_name_and_age(name="Teddy")
  "#{name} is #{generate_age} years old!"
end

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts output_name_and_age
else
  puts output_name_and_age(name)
end
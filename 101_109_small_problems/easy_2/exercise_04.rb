# 101-109 - Small Problems > Easy 2 > When will I Retire?

def calculate_years_left(retire_age, current_age)
  retire_age - current_age
end

def calculate_current_year
  Time.now.year
end

def calculate_retirement_year(year, to_go)
  year + to_go
end


puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_left = calculate_years_left(retirement_age, age)
year = calculate_current_year
retirement_year = calculate_retirement_year(year, years_left)

puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
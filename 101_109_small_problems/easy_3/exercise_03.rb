# 101-109 - Small Problems > Easy 3 > Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a character.

puts "Please write word or multiple words:"
string = gets.chomp

mutated_string = string.gsub(" ","")

puts "There are #{mutated_string.length} characters in \"#{string}\"."


# Their solution

# input = gets.chomp
# number_of_characters = input.delete(' ').size

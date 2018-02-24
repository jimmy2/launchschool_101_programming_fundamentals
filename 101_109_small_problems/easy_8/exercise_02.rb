# 101-109 - Small Problems > Easy 8 > Madlibs

# Mad libs are a simple game where you create a story template with blanks
# for words.  You, or another player, then construct a list of words and 
# place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
# and an adjective and injects those into a story that you create.

=begin

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

=end

puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter a adjective:"
adj = gets.chomp
puts "Enter a adverb:"
adv = gets.chomp

puts "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"



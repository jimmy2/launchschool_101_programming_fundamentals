# 101-109 - Small Problems > Easy 5 > Clean up the words

# Given a string that consists of some words and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced
# by spaces. If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result (the result should never have consecutive spaces).

def cleanup(string)
  array = string.chars
  output = ""
  i = 0
  for i in (i..array.length-1)
    if array[i] =~ /[A-Za-z]/
      output << array[i]
    else
      output << " "
    end
    output.gsub!("  ", " ")
    i += 1
  end
  output
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?") # == ' what s my line '
p cleanup("- a-% nice&& day 22$ today?")

# Their solution

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

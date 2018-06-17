# 101-109 - Small Problems > Medium 2 > Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be 
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Note that balanced pairs must each start with a (, not a ).

def balanced?(string)
  open, closed = 0, 0
  for i in 0...string.length
    if string[i] == "("
      open += 1
    elsif string[i] == ")"
      closed += 1
    end
    break if closed > open
  end
  open == closed
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# Their solution

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end
# question_05.rb

# How could the unnecessary duplication in this method be removed?

=begin
  
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
  
=end

def color_valid(color)
  %w(blue green).include?(color)
end

# Their answer

# def color_valid(color)
#   color == "blue" || color == "green"
# end
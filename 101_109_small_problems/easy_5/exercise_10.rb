# 101-109 - Small Problems > Easy 5 > Bannerizer

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  length = string.length
  p "+-" + ("-" * length) + "-+"
  p "| " + (" " * length) + " |"
  p "| " + string + " |"
  p "| " + (" " * length) + " |"
  p "+-" + ("-" * length) + "-+"
end

print_in_box('To boldly go where no one has gone before.')

=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end

print_in_box('')

=begin
+--+
|  |
|  |
|  |
+--+
=end

# Their solution

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end
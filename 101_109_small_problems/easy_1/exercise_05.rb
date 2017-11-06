# 101-109 - Small Problems > Easy 1 > Reverse It (Part 1)

# Write a method that takes one argument, a string,
# and returns the same string with the words in reverse order.

def reverse_sentence(string)
  string = string.split(' ')
  new_sentence = []
  while string.length > 0
    new_sentence << string.pop
  end
  string = ''
  new_sentence.each do |value|
    string = string + ' ' + value
  end
  string.strip
end

puts reverse_sentence('1 2 3 4 5')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Their solution
# 1 line hahahaha

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# 101-109 - Small Problems > Easy 5 > Letter Swap

# Given a string of words separated by spaces, write a method that takes this string of words
# and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always
# contain at least one word. You may also assume that each string contains nothing but words and spaces.

def swap(string)
  output, start_char, ending_char = [], "", ""
  array = string.split(" ")
  array.each do | word |
    start_char, ending_char = word[0], word[-1]
    word[-1], word[0] = start_char, ending_char
    output << word
  end
  output.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

p swap('Oh what a wonderful day it is') # == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') # == 'ebcdA'
p swap('a') # == 'a'

# Their solution

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
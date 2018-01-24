# 101-109 - Small Problems > Easy 5 > Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  hash = {}
  array = string.split(" ")
  array.each do | word |
    word_length = word.length
    if hash.has_key?(word_length)
      hash[word_length] += 1
    else
      hash[word_length] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

p word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") # == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') # == {}

# Their solution

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

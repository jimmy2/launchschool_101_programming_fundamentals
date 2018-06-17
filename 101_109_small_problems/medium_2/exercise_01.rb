# 101-109 - Small Problems > Medium 2 > Longest Sentence

# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end
# with periods (.), exclamation points (!), or question marks (?). 
# Any sequence of characters that are not spaces or sentence-ending characters
# should be treated as a word. You should also print the number of words
# in the longest sentence.

# example.txt => 86 words long
# pg84.txt => 157 words long

def longest_sentence(filename)
  input = File.open(filename, "r")
  array = input.read.to_s.gsub(/[!?]/,".").split(".")
  current_longest = 0
  longest_sentence = ""
  array.each do | sentence |
    sentence.delete("\n")
    if sentence.split.size > current_longest
      current_longest = sentence.split.size
      longest_sentence = sentence.strip
    end
  end
  input.close
  puts "#{longest_sentence}"
  puts "#{current_longest} words long"
end

longest_sentence("example.txt")
longest_sentence("pg84.txt")

# Their solution

# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"


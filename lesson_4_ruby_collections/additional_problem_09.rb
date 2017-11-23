# additional_problem_09.rb

# Practice Problems: Additional Practice

# As we have seen previously we can use some built-in string methods to change the 
# case of a string. A notably missing method is something provided in Rails, 
# but not in Ruby itself...titleize. This method in Ruby on Rails creates a string
# that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"
another_string = "hello how are you? good, today is a great day"

# would be:

# words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

def titleize(string)
  string = string.split(" ")
  output = ""
  string.each do | word |
    output << word[0].upcase + word[1..-1].downcase + " "
  end
  output.chop
end

p titleize(words)
p titleize(another_string)

# Their solution

p words.split.map { |word| word.capitalize }.join(' ')
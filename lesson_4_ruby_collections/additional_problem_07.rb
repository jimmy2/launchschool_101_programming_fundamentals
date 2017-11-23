# additional_problem_07.rb

# Practice Problems: Additional Practice

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

hash = {}

statement.chars.each do | value |
  if hash[value]
    hash[value] += 1
  else
    hash[value] = 1
  end
end

p hash

# Their solution (alphabetical order)

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
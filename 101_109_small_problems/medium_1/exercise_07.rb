# 101-109 - Small Problems > Medium 1 > Word to Digit

# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

HASH = { "zero" => "0", "one" => "1", "two" => "2", "three" => "3",
         "four" => "4", "five" => "5", "six" => "6", "seven" => "7",
         "eight" => "8", "nine" => "9" }

def word_to_digit(string)
  HASH.each do | key, value |
    string.gsub!(key, value)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('Please call me at five five five one two three four. Thanks.') 
# => 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Their solution

# Freight == Freight not Fr8

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end


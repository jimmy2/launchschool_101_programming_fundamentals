# 101-109 - Small Problems > Easy 5 > ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that contains
# the value of the original string with all consecutive duplicate characters collapsed
# into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(string)
  output = ""
  string.chars.each do | char |
    output << char if char != output[-1]
  end
  output
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

p crunch('ddaaiillyy ddoouubbllee') # == 'daily double'
p crunch('4444abcabccba') # == '4abcabcba'
p crunch('ggggggggggggggg') # == 'g'
p crunch('a') # == 'a'
p crunch('') # == ''

# Their solution

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
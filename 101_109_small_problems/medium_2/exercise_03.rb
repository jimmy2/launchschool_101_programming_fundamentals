# 101-109 - Small Problems > Medium 2 > Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the 
# number of uppercase and lowercase characters, as well as characters that
# were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the percentage of characters in the 
# string that are lowercase letters, one the percentage of characters that
# are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def letter_percentages(string)
  results = Hash.new(0)
  lower, upper, neither = 0.0, 0.0, 0.0
  for i in 0...string.length
    if string[i].ord >= 65 && string[i].ord < 97
      upper += 1
    elsif string[i].ord >= 97 && string[i].ord < 122
      lower += 1
    else
      neither += 1
    end
  end
  lower > 0 ? results[:lowercase] = (lower / string.length) * 100 : results[:lowercase] = 0
  upper > 0 ? results[:uppercase] = (upper / string.length) * 100 : results[:uppercase] = 0
  neither > 0 ? results[:neither] = (neither / string.length) * 100 : results[:neither] = 0
  results
end

p letter_percentages('abCdef 123') 
# => { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') 
# => { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') 
# => { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Their solution

# def letter_percentages(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   percentages = { lowercase: [], uppercase: [], neither: [] }
#   characters = string.chars
#   length = string.length

#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end
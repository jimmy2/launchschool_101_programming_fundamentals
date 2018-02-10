# 101-109 - Small Problems > Easy 7 > Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String 
# that contains the original value using a staggered capitalization scheme in 
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count 
# as characters when switching between upper and lowercase.

def staggered_case(string)
  # array = string.chars
  # array.each_with_index do | char, index |
  #   if index.even?
  #     char.upcase!
  #   else
  #     char.downcase!
  #   end
  # end
  # array.join
  array = string.chars.each_with_index { | char, index | index.even? ? char.upcase! : char.downcase! }.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!') # => 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') # => 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') # => 'IgNoRe 77 ThE 444 NuMbErS'

# Their solution

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end
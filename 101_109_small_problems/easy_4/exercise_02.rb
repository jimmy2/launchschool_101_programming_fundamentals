# 101-109 - Small Problems > Easy 4 > What Century is That?

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

def century(year)
  century = year / 100
  if year % 100 > 0
    century += 1
  end
  century = century.to_s
  if (century[-1] == "1") && (century[-2] != "1")
    century += 'st'
  elsif (century[-1] == "2") && (century[-2] != "1")
    century += 'nd'
  elsif (century[-1] == "3") && (century[-2] != "1")
    century += 'rd'
  else
    century += 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)

# Their answer

=begin

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

=end


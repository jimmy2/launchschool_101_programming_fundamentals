# 101-109 - Small Problems > Easy 9 > Grade book

# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.

=begin
  
Numerical Score Letter | Grade
90 <= score <= 100      'A'
80 <= score < 90        'B'
70 <= score < 80        'C'
60 <= score < 70        'D'
0 <= score < 60         'F'
  
=end

# Tested values are all between 0 and 100. There is no need to check for 
# negative values or values greater than 100.

def get_grade(sc1, sc2, sc3)
  average = (sc1 + sc2 + sc3) / 3
  case average
  when 90..100 then "A" 
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

p get_grade(95, 90, 93) # => "A"
p get_grade(50, 50, 95) # => "D"

# Their solution

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

# Formal psuedocode

=begin
  
1. a method that returns the sum of two integers
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
3. a method that takes an array of integers, and returns a new array with every other element
  
=end

# 1. a method that returns the sum of two integers

START

GET integer1 from the user
SET integer1
GET integer2 from the user
SET integer2

SET result as the sum of integer1 and integer2

PRINT result to user

END

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

START

array of strings

SET index = 0
SET result = ""

WHILE i < array of string length
  SET result = result + array of string value at index
  SET index increment by 1

PRINT result

END

# 3. a method that takes an array of integers, and returns a new array with every other element

START

array of integers

SET index = 1
SET new_array

WHILE index < array of integers length
  SET new_array << array of intergers value at index
  SET index increment by 2

PRINT new_array

END








[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# 1
# 3
# => [1, 3] 

=begin

Line:                   1  
Action:                 method call (map)
Object:                 The outer array 
Side Effect:            none
Return Value:           new array [1,3]
Is return value used?:  No

Line:                   1-3
Action:                 block execution
Object:                 Each sub-array 
Side Effect:            none
Return Value:           first value of each sub-array
Is return value used?:  Yes, used by map for transformation

Line:                   2 
Action:                 method call (first)
Object:                 Each sub-array 
Side Effect:            none
Return Value:           first value of each sub-array - index[0]
Is return value used?:  Yes, by puts

Line:                   2 
Action:                 method call (puts)
Object:                 Element at index 0 of each sub-array 
Side Effect:            outputs a string representation of an integer
Return Value:           nil
Is return value used?:  no

Line:                   3 
Action:                 method call (first)
Object:                 Each sub-array 
Side Effect:            none
Return Value:           first value of each sub-array - index[0]
Is return value used?:  Yes, used to determine return value of block
  
=end
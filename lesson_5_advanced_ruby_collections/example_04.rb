my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]

=begin

Line:                   1  
Action:                 variable assignment (my_arr)
Object:                 n/a
Side Effect:            none
Return Value:           [[18, 7], [3, 12]]
Is return value used?:  No

Line:                   1  
Action:                 method call (each)
Object:                 The outer array [[18, 7], [3, 12]]
Side Effect:            none
Return Value:           [[18, 7], [3, 12]]
Is return value used?:  Yes, assigned to my_arr variable

Line:                   1-7  
Action:                 outer block execution
Object:                 Each sub-array
Side Effect:            none
Return Value:           Each sub-array
Is return value used?:  No

Line:                   2
Action:                 method call (each)
Object:                 Each sub-array 
Side Effect:            none
Return Value:           current calling sub array
Is return value used?:  Yes

Line:                   2-6
Action:                 inner block execution
Object:                 Each element iterated in sub-array 
Side Effect:            none
Return Value:           nil
Is return value used?:  no

Line:                   3
Action:                 comparison (>)
Object:                 Each element of each sub-array iteration 
Side Effect:            none
Return Value:           boolean
Is return value used?:  yes, evaluated by 'if'

Line:                   3-5
Action:                 conditional (if)
Object:                 Each element of each sub-array iteration 
Side Effect:            none
Return Value:           nil
Is return value used?:  Yes, used to determine return value of inner block

Line:                   4
Action:                 method call (puts)
Object:                 Each element of each sub-array iteration 
Side Effect:            outputs a string of an integer
Return Value:           nil
Is return value used?:  Yes, used to determine return value of inner block
 
=end


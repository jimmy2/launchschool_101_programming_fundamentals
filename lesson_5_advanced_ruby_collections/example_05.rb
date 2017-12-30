[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# => [[2, 4], [6, 8]]
  
=begin

Line:                   1  
Action:                 method call (map)
Object:                 Original array [[1, 2], [3, 4]]
Side Effect:            none
Return Value:           New transformed array [[2, 4], [6, 8]]
Is return value used?:  No
  
end


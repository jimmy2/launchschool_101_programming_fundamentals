# practice_problem_04.rb

# Practice Problems: Methods and More Methods

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { "a" => "ant", "b" => "bear", "c" => "cat" }

# each_with_object pass in an object, the object is passed through the block,
# and returned at the end of each iteration.
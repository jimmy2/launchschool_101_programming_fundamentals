# additional_problem_03.rb

# Practice Problems: Additional Practice

# In the age hash throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.map { | key, value | ages.delete(key) if value >= 100 }

p ages

# Their solution

# ages.keep_if { |_, age| age < 100 }

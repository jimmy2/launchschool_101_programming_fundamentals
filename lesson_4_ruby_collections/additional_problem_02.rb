# additional_problem_02.rb

# Practice Problems: Additional Practice

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_total = 0

ages.each { | _, value | ages_total += value } 

p ages_total

# p ages.values.inject(:+)

# additional_problem_05.rb

# Practice Problems: Additional Practice

# In the array find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { | value | value.start_with?("Be") }

# Their solution

# flintstones.index { |name| name[0, 2] == "Be" }

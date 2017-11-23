# additional_problem_06.rb

# Practice Problems: Additional Practice

# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.map! { | value | value.slice(0..2) }

# Their solution

# flintstones.map! { |name| name[0,3] }

# question_06.rb

=begin
  
In an earlier practice problem we saw that depending on
 variables to be modified by called methods can be tricky:


def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

We learned that whether the above "coincidentally" does 
what we think we wanted "depends" upon what is going on inside the method.

How can we refactor this practice problem to make the result 
easier to predict and easier for the next programmer to maintain?

=end

def append_rutabaga!(a_string_param, an_array_param)
  a_string_param << "rutabaga" # mutates the caller (+= doesn't)
  an_array_param << "rutabaga" # mutates the caller
end

my_string = "pumpkins"
my_array = ["pumpkins"]
append_rutabaga!(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Their solution

=begin
  
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
  
=end

# Clever programmers don't write "clever" code. 
# They write explicit code that is easy to read, debug and modify as the requirements change.
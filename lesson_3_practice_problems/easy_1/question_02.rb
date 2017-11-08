# question_02.rb

# Describe the difference between ! and ? in Ruby. 
# And explain what would happen in the following scenarios:

=begin

1.  what is != and where should you use it?
2.  put ! before something, like !user_name
3.  put ! after something, like words.uniq!
4.  put ? before something
5.  put ? after something
6.  put !! before something, like !!user_name 
  
=end

# Answers

=begin

1. 'Not equal too' - a comparison operator. e.g. 3 != 2 => true
2. 'Not' (e.g. not user, not logged in, etc)
3. Usually a destructive (mutating the caller) method.  But not always.
4. 
5. Usually a question for a method, e.g. has_key? or include? or start_with? expecting a return value.
6. !! = true
=end
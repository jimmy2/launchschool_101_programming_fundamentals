# 101-109 - Small Problems > Easy 9 > Welcome Stranger

# Create a method that takes 2 arguments, an array and a hash.
# The array will contain 2 or more elements that, when combined with adjoining
# spaces, will produce a person's name. The hash will contain two keys, 
# :title and :occupation, and the appropriate values. Your method should 
# return a greeting that uses the person's full name, and mentions the 
# person's title.

def greetings(array, hash)
  puts "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# Their solution

def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end
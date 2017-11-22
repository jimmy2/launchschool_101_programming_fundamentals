# practice_problem_05.rb

# Practice Problems: Methods and More Methods

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# returns
# => [:a, "ant"] 
# hash
# => { b: 'bear' }

# https://ruby-doc.org/core-2.2.0/Hash.html#method-i-shift

# Removes a key-value pair from hsh and returns it as the two-item array [ key, value ], 
# or the hash’s default value if the hash is empty.
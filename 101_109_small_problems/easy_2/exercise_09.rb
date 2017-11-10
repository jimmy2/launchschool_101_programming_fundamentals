# 101-109 - Small Problems > Easy 2 > String Assignment

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice
# => Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB

# upcase! is destructive, it mutates the caller of the name object that save_name also references.
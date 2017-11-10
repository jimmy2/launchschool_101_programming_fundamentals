# 101-109 - Small Problems > Easy 2 > Mutation

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# copy references in the each method, then mutated

=begin
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
=end
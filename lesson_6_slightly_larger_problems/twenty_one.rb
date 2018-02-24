# twenty_one.rb

values = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
suits = %w{S H D C}
DECK = suits.product(values)

p DECK
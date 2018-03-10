# twenty_one.rb

values = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
suits = %w{S H D C}
DECK = suits.product(values)

def initialize_deck(deck)
  deck 
end

def deal_cards
end

def player_turn
end

def dealer_turn
end

def compare_scores
end

def determine_winner
end

def print_deal
  puts "Dealer has: Ace and unknown card"
  puts "You have: 2 and 8"
end  

player_hand = DECK.sample(2)
computer_hand = DECK.sample(2)

initialize_game(DECK)
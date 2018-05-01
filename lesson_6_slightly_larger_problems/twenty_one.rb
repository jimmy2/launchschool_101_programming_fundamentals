# twenty_one.rb
# My solution

values = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
suits = %w[S H D C]
DECK = suits.product(values)
players_cards = []
dealers_cards = []

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck(deck)
  deck
end

def deal_cards(deck, cards = 1)
  deck.sample(cards)
end

def update_deck(cards, deck)
  deck - cards
end

def determine_winner(player, dealer)
  player_score = calculate_score(player)
  dealer_score = calculate_score(dealer)
  if player_score > 21
    "The dealer won!"
  elsif dealer_score > 21
    "You won!"
  elsif player_score == dealer_score
    "Push... You both have the same score (#{player_score})"
  elsif player_score > dealer_score
    "You won! (#{player_score} to #{dealer_score})"
  else
    "The dealer won! (#{dealer_score} to #{player_score})"
  end
end

# rubocop:disable Metrics/MethodLength
def calculate_score(user)
  score = []
  ace_count = 0
  user.each do |item|
    case item[1]
    when 'A'
      ace_count += 1
      score << 11
    when 'J', 'Q', 'K' then score << 10
    else
      score << item[1].to_i
    end
  end
  total = score.reduce(:+)
  while total > 21 && ace_count > 0
    total -= 10
    ace_count -= 1
  end
  total
end
# rubocop:enable Metrics/MethodLength

def busted?(user)
  calculate_score(user) > 21
end

def print_deal(player, dealer, hide = true)
  if hide
    puts "Dealer has: #{face_value(dealer[0][1])} and an unknown card"
  else
    puts "Dealer has: #{print_cards(dealer)}; (#{calculate_score(dealer)})"
  end
  puts "You have: #{print_cards(player)}; (#{calculate_score(player)})"
end

def print_cards(user)
  cards = []
  user.each { |card| cards << face_value(card[1]) }
  cards.join(", ")
end

def face_value(card)
  case card
  when 'A' then "Ace"
  when 'K' then "King"
  when 'Q' then "Queen"
  when 'J' then "Jack"
  else
    card.to_s
  end
end

# Start game
deck = initialize_deck(DECK)
players_cards = deal_cards(deck, 2)
deck = update_deck(players_cards, deck)
dealers_cards = deal_cards(deck, 2)
deck = update_deck(dealers_cards, deck)
print_deal(players_cards, dealers_cards)
loop do
  break if calculate_score(players_cards) == 21
  prompt "Do you want to hit (h) or stay (s)?"
  reply = gets.chomp.downcase
  break if reply == 's' || busted?(players_cards)
  if reply == 'h'
    new_card = deal_cards(deck, 1)
    prompt "You hit (#{face_value(new_card[0][1])})"
    players_cards += new_card
    deck = update_deck(players_cards, deck)
    sleep 2
    print_deal(players_cards, dealers_cards)
    break if busted?(players_cards)
  else
    prompt "Please select hit (h) or stay (s)..."
  end
end
if busted?(players_cards)
  prompt "You bust..."
else
  prompt "The dealer turns over his hidden card..."
  sleep 2
  loop do
    print_deal(players_cards, dealers_cards, false)
    if calculate_score(dealers_cards) < 17
      new_card = deal_cards(deck, 1)
      prompt "Dealer hits (#{face_value(new_card[0][1])})"
      dealers_cards += new_card
      deck = update_deck(dealers_cards, deck)
      sleep 2
    end
    break if busted?(dealers_cards) || calculate_score(dealers_cards) >= 17
  end
end
if busted?(dealers_cards)
  prompt "The dealer busts..."
end
puts determine_winner(players_cards, dealers_cards)

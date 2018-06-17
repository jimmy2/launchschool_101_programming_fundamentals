# twenty_one.rb
# My solution

values = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
suits = %w[S H D C]
DECK = suits.product(values)
GAME_MAX = 21
DEALER_STAY = 17
WINNING_SCORE = 5
players_cards = []
dealers_cards = []

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck(deck)
  deck.shuffle
end

def determine_winner(player_score, dealer_score)
  if player_score > GAME_MAX
    :dealer
  elsif dealer_score > GAME_MAX
    :player
  elsif player_score == dealer_score
    :tie
  elsif player_score > dealer_score
    :player
  else
    :dealer
  end
end

def print_summary(player_score, dealer_score, winner, scores)
  puts ""
  player_score = "Bust!" if player_score > GAME_MAX
  dealer_score = "Bust!" if dealer_score > GAME_MAX
  if winner == :player
    puts "You won! (#{player_score} to #{dealer_score})"
  elsif winner == :dealer
    puts "The dealer won! (#{dealer_score} to #{player_score})"
  else
    puts "Push... You both have the same score (#{player_score})"
  end
  prompt "Game score: "
  prompt "You #{scores[:player]} : Dealer #{scores[:dealer]}"
  prompt "#{scores[:tie]} ties."
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
  while total > GAME_MAX && ace_count > 0
    total -= 10
    ace_count -= 1
  end
  total
end
# rubocop:enable Metrics/MethodLength

def busted?(score)
  score > GAME_MAX
end

def print_deal(player_cards, dealer_cards, plr_scr, dlr_scr = 0, hide = true)
  if hide
    puts "Dealer has: #{face_value(dealer_cards[0][1])} and an unknown card"
  else
    puts "Dealer has: #{print_cards(dealer_cards)}; (#{dlr_scr})"
  end
  puts "You have: #{print_cards(player_cards)}; (#{plr_scr})"
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
prompt "Welcome to Twenty One!"
prompt "First person to win #{WINNING_SCORE} games is the winner!"
win_data = { player: 0, dealer: 0, tie: 0 }
loop do
  sleep 1
  puts ""
  prompt "Round #{win_data.values.reduce(:+) + 1}"
  puts ""
  deck = initialize_deck(DECK)
  players_cards = deck.pop(2)
  dealers_cards = deck.pop(2)
  player_scr = calculate_score(players_cards)
  print_deal(players_cards, dealers_cards, player_scr)
  loop do
    break if player_scr == GAME_MAX
    prompt "Do you want to hit (h) or stay (s)?"
    reply = gets.chomp.downcase
    break if reply == 's' || busted?(player_scr)
    if reply == 'h'
      new_card = deck.pop
      prompt "You hit (#{face_value(new_card[1])})"
      players_cards << new_card
      player_scr = calculate_score(players_cards)
      sleep 2
      print_deal(players_cards, dealers_cards, player_scr)
      break if busted?(player_scr)
    else
      prompt "Please select hit (h) or stay (s)..."
    end
  end
  dealer_scr = calculate_score(dealers_cards)
  if busted?(player_scr)
    prompt "You bust..."
  else
    prompt "The dealer turns over his hidden card..."
    sleep 1
    loop do
      print_deal(players_cards, dealers_cards, player_scr, dealer_scr, false)
      sleep 1
      if dealer_scr < DEALER_STAY
        new_card = deck.pop
        prompt "Dealer hits (#{face_value(new_card[1])})"
        dealers_cards << new_card
        dealer_scr = calculate_score(dealers_cards)
        sleep 2
      end
      break if busted?(dealer_scr) || dealer_scr >= DEALER_STAY
    end
  end
  if busted?(dealer_scr)
    prompt "The dealer busts..."
  end
  winner = determine_winner(player_scr, dealer_scr)
  win_data[winner] += 1
  print_summary(player_scr, dealer_scr, winner, win_data)
  break if win_data.values.any? { |score| score == WINNING_SCORE }
end
puts ""
prompt "#{win_data.key(win_data.values.max).to_s.capitalize} is the champion!"
prompt "Thanks for playing Twenty One.  Goodbye!"

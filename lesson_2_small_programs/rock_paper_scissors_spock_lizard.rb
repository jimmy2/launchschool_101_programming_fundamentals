# rock_paper_scissors_spock_lizard.rb

# Assignment: RPS Bonus Features

# Scissors cuts paper
# Paper covers rock
# Rock crushes lizard
# Lizard poisons Spock
# Spock smashes scissors
# Scissors decapitates lizard
# Lizard eats paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes scissors

VALID_CHOICES = { rock: "r", scissors: "s", paper: "p",
                  lizard: "l", spock: "sp" }

GAME_HASH = { rock: ["scissors", "lizard"],
              scissors: ["paper", "lizard"],
              paper: ["rock", "spock"],
              lizard: ["spock", "paper"],
              spock: ["scissors", "rock"] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  GAME_HASH[first.to_sym].include?(second)
end

def get_choice(shorthand)
  VALID_CHOICES.key(shorthand).to_s
end

def return_results(player, computer)
  if win?(player, computer)
    "player"
  elsif win?(computer, player)
    "computer"
  else
    "tie"
  end
end

def display_results(outcome)
  case outcome
  when "player"
    prompt("You won!")
  when "computer"
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def win_or_wins(score)
  score != 1 ? "wins" : "win"
end

computer_wins_total = 0
players_wins_total = 0
ties = 0
round = 1
prompt("Welcome to the '#{VALID_CHOICES.keys.join(', ')}' game.")

loop do
  choice = ''
  loop do
    prompt("First to 5 wins...")
    prompt("Round #{round} : Choose one: #{VALID_CHOICES.keys.join(', ')}
      (#{VALID_CHOICES.values.join(', ')})")
    choice = Kernel.gets().chomp().downcase()
    if VALID_CHOICES.keys.include?(choice.to_sym)
      break
    elsif VALID_CHOICES.values.include?(choice)
      choice = get_choice(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample.to_s

  system('clear') || system('cls') # For windows users too

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  winner = return_results(choice, computer_choice)
  display_results(winner)

  if winner == "player"
    players_wins_total += 1
  elsif winner == "computer"
    computer_wins_total += 1
  else
    ties += 1
  end

  round += 1

  results_prompt = <<-MSG
SCORECARD
    Player: #{players_wins_total} #{win_or_wins(players_wins_total)}.
    Computer: #{computer_wins_total} #{win_or_wins(computer_wins_total)}.
    Ties: #{ties}
  MSG

  prompt(results_prompt)

  break if players_wins_total == 5 || computer_wins_total == 5
end

if players_wins_total > computer_wins_total
  prompt("You are the champion!!!")
else
  prompt("The computer is the master!!!")
end

prompt("Thanks for playing: rock, paper, scissors, spock, lizard!")

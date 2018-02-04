WINNING_LINES =
  [
    [
      [1, 2, 3], [4, 5, 6], [7, 8, 9] # rows
    ] + [
      [1, 4, 7], [2, 5, 8], [3, 6, 9] # cols
    ] + [
      [1, 5, 9], [3, 5, 7] # diagonals
    ], [
      (1..5).to_a, (6..10).to_a, (11..15).to_a,
      (16..20).to_a, (21..25).to_a # rows
    ] + [
      (1..25).find_all { |i| i % 5 == 1 },
      (1..25).find_all { |i| i % 5 == 2 },
      (1..25).find_all { |i| i % 5 == 3 },
      (1..25).find_all { |i| i % 5 == 4 },
      (1..25).find_all { |i| i % 5 == 0 } # cols
    ] + [
      [1, 7, 13, 19, 25], [5, 9, 13, 17, 21] # diagonals
    ], [
      (1..9).to_a, (10..18).to_a, (19..27).to_a,
      (28..36).to_a, (37..45).to_a, (46..54).to_a,
      (55..63).to_a, (64..72).to_a, (73..81).to_a # rows
    ] + [
      (1..81).find_all { |i| i % 9 == 1 },
      (1..81).find_all { |i| i % 9 == 2 },
      (1..81).find_all { |i| i % 9 == 3 },
      (1..81).find_all { |i| i % 9 == 4 },
      (1..81).find_all { |i| i % 9 == 5 },
      (1..81).find_all { |i| i % 9 == 6 },
      (1..81).find_all { |i| i % 9 == 7 },
      (1..81).find_all { |i| i % 9 == 8 },
      (1..81).find_all { |i| i % 9 == 9 },
      (1..81).find_all { |i| i % 9 == 0 } # cols
    ] + [
      [1, 11, 21, 31, 41, 51, 61, 71, 81],
      [9, 17, 25, 33, 41, 49, 57, 65, 73] # diagonals
    ]
  ]

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

FIRST_PLAYER = "player" # player, computer, choose

GAME_SIZES = { 1 => 3, 2 => 5, 3 => 9 }

scores = [0, 0]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize,Lint/ParenthesesAsGroupedExpression
def display_board(brd, size)
  system("clear") || system("cls")
  puts "You're an #{PLAYER_MARKER}.  The Computer is an #{COMPUTER_MARKER}"
  puts ""
  array = brd.values.each_slice(size).to_a
  i = 1
  array.each do |sub_array|
    puts ("     |" * size).chop
    puts "  " + sub_array.join("  |  ")
    puts ("     |" * size).chop
    puts ("-----+" * size).chop + "-" if i < size #remove final border
    i += 1
  end
  puts ""
end
# rubocop:enable Metrics/AbcSize,Lint/ParenthesesAsGroupedExpression

def initialize_board(board_size)
  new_board = {}
  limit = board_size * board_size
  (1..limit).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, line, marker, size)
  if brd.values_at(*line).count(marker) == (size - 1)
    return brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys[0]
  end
  nil
end

# rubocop:disable Metrics/MethodLength,AbcSize,CyclomaticComplexity
def comp_places_piece!(brd, size)
  square = nil
  lines_sub_array = GAME_SIZES.key(size) - 1

  # should try to win
  WINNING_LINES[lines_sub_array].each do |line|
    square = find_at_risk_square(brd, line, COMPUTER_MARKER, size)
    break if square
  end

  # should defend if threatened
  if !square
    WINNING_LINES[lines_sub_array].each do |line|
      square = find_at_risk_square(brd, line, PLAYER_MARKER, size)
      break if square
    end
  end

  # pick the middle square
  if !square
    middle = ((size * size) / 2.0).ceil
    if empty_squares(brd).include?(middle)
      square = middle
    end
  end

  # pick a random square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/MethodLength,AbcSize,CyclomaticComplexity

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, size)
  !!detect_winner(brd, size)
end

def detect_winner(brd, size)
  lines_sub_array = GAME_SIZES.key(size) - 1
  WINNING_LINES[lines_sub_array].each do |line|
    # line[0], line[1], line[2] = *line
    if brd.values_at(*line).count(PLAYER_MARKER) == size
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == size
      return "Computer"
    end
  end
  nil
end

def place_piece!(brd, player, size)
  player = player.downcase
  player == "player" ? player_places_piece!(brd) : comp_places_piece!(brd, size)
end

def alternate_player(player)
  player.downcase == "player" ? "Computer" : "Player"
end

prompt "Welcome to Tic-Tac-Toe!"
prompt "First to 5 wins is the champion."

loop do
  response = ""
  puts ""
  prompt "Which type of game would you like to play? :"
  puts "1)  3x3 standard game"
  puts "2)  5x5 game"
  puts "3)  9x9 game"
  game_size = 0
  loop do
    prompt "Choose 1, 2, or 3."
    game_choice = gets.chomp.to_i
    if GAME_SIZES.key?(game_choice)
      game_size = GAME_SIZES[game_choice]
      break
    end
  end

  board = initialize_board(game_size)

  if FIRST_PLAYER == "choose"
    loop do
      prompt "Who will go first?  The player or the computer?"
      response = gets.chomp
      if response.downcase.start_with?("p")
        response = "player"
        break
      elsif response.downcase.start_with?("c")
        response = "computer"
        break
      end
      prompt "Please enter 'player' (p) or 'computer' (c)"
    end
    current_player = response.downcase
  else
    current_player = FIRST_PLAYER
  end

  loop do
    display_board(board, game_size)
    place_piece!(board, current_player, game_size)
    current_player = alternate_player(current_player)
    break if someone_won?(board, game_size) || board_full?(board)
  end

  display_board(board, game_size)

  if someone_won?(board, game_size)
    winner = detect_winner(board, game_size)
    prompt "#{winner} won!"
    winner == "Player" ? scores[0] += 1 : scores[-1] += 1
    prompt "Player #{scores[0]} : Computer #{scores[-1]}"
  else
    prompt "It's a tie!"
  end

  break if scores.any? { |score| score == 5 }

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Final score: Player #{scores[0]} : Computer #{scores[-1]}"
prompt "Thanks for playing Tic Tac Toe.  Goodbye!"

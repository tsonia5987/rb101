require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(board, win_count, round)
  system 'clear'
  puts "ROUND #{round}:"
  puts "You're a #{PLAYER_MARKER} with #{win_count['Player']} wins. " +
       "Computer is #{COMPUTER_MARKER} with #{win_count['Computer']} wins."
  puts ""
  puts "     |     |     "
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      square = brd.select {|k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
    end
  end
  square
end

def computer_places_piece!(brd)
  square = find_at_risk_square(brd, COMPUTER_MARKER)
  square = find_at_risk_square(brd, PLAYER_MARKER) if square == nil
  square = 5 if empty_squares(brd).include?(5) && !square
  square = empty_squares(brd).sample if square == nil
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def update_win_count(brd, win_count)
  winner = detect_winner(brd)
  win_count[winner] += 1
  win_count
end

def detect_tournament_winner(win_count)
  if win_count['Player'] >= 5
    'Player'
  elsif win_count['Computer'] >= 5
    'Computer'
  else
    nil
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delim=', ', joining_word='or')
  if arr.empty?
    return ""
  end
  if arr.size == 1
    return "#{arr[0]}"
  end
  str = arr[0..-2].join(delim)
  str += "#{delim}#{joining_word} #{arr[-1]}"
end

def player_chooses_first
  prompt "Who would like to go first? 1 - Player, 2 - Computer"
  response = gets.chomp.to_i
  current_player = response == 1 ? 'Player' : 'Computer'
end

def computer_chooses_first
  current_player = ['Player', 'Computer'].sample
end

def place_piece!(brd, current_player)
  current_player == 'Player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(current_player)
  current_player = current_player == 'Player' ? 'Computer' : 'Player'
end

loop do
  win_count = {'Player' => 0, 'Computer' => 0}
  round = 1
  tournament_winner = nil

  board = initialize_board
  display_board(board, win_count, round)

  current_player = computer_chooses_first

  loop do
    board = initialize_board
    display_board(board, win_count, round)

    loop do
      display_board(board, win_count, round)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, win_count, round)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      win_count = update_win_count(board, win_count)
    else
      prompt "It's a tie!"
    end

    tournament_winner = detect_tournament_winner(win_count)
    break if !!tournament_winner

    prompt "Press 'y' for next round"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
    round += 1
  end

  prompt "#{tournament_winner} wins tournament!" if !!tournament_winner
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye."

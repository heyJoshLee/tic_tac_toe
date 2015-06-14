require"pry"

# 1. Come up with the requirements/ specifications, which will determine the scope
# 2. Application logic; sequence of steps
# 3. Translation of those steps to code
# 4. Run code to verify logic
#
# draw a board

# Assign player to "x" 
# Assign computer to "O"
#
# loop until a winner or all swuares are taken
  # player1 picks an empty square
  # check for a winner
  # computer picks an empty square 
  # check for a winner
#
# if there's a winner
  #   show the winner
  # or else
   # It's a tie

def initialize_board
  b = {}
  (1..9).each{ |position| b[position] = " "}
  b
end

def draw_board(b)
  system "clear"
  puts "#{b[1]}  |  #{b[2]}  |  #{b[3]} "
  puts " -------------- "
  puts "#{b[4]}  |  #{b[5]}  |  #{b[6]} "
  puts " -------------- "
  puts "#{b[7]}  |  #{b[8]}  |  #{b[9]} "
end

def empty_positions(b)
  b.select {|k, v| v == " "}.keys
end

def player_picks_square(b)
  begin
    puts "Pick a square (1-9)"
    position = gets.chomp.to_i
  end until empty_positions(b).include?(position)
  b[position] = "X"
end

def computer_picks_square(b)
  position = empty_positions(b).sample
  b[position] = "O"
end

def check_winner(b)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    return "Player" if b.values_at(*line).count('X') == 3
    return "Computer" if b.values_at(*line).count('O') == 3
  end
  nil
end

def nine_positions_are_filled?(board)
  empty_positions(board) == []
end

def announce_winner(winner)
  puts "#{winner} wins!"
end

board = initialize_board
draw_board(board)
     
begin
  player_picks_square(board)
  computer_picks_square(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || nine_positions_are_filled?(board)

  if winner
    announce_winner(winner)
  else
    puts "It's a tie!"
  end



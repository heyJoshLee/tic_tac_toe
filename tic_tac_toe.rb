require"pry"
# 1. Come up with the requirements/ specifications, which will determine the scope
# 2. Application logic; sequence of steps
# 3. Translation of those steps to code
# 4. Run code to verify logic

# draw a board
# Assign player to "x" 
# Assign computer to "O"

# loop until a winner or all swuares are taken
  # player1 picks an empty square
  # check for a winner
  # computer picks an empty square 
  # check for a winner

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
  puts "#{b[1]}  |  #{b[2]}  |  #{b[3]} "
  puts " -------------- "
  puts "#{b[4]}  |  #{b[5]}  |  #{b[6]} "
  puts " -------------- "
  puts "#{b[7]}  |  #{b[8]}  |  #{b[9]} "
end

def player_picks_square(b)
  puts "Pick a square (1-9)"
  position = gets.chomp.to_i
  b[position] = "X"
end

board = initialize_board

draw_board(board)
     player_picks_square(board)

# begin

# end until # winner || all_squares_taken?

# start at 38:04


WIN_COMBINATIONS = [
 [0,1,2],
 [3,4,5],
 [6,7,8],
 [0,3,6],
 [1,4,7],
 [2,5,8],
 [0,4,8],
 [2,4,6]
 ]
 
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, marker)
  board[index] = marker
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn_count(board)
  counter = 0
  board.each do |element|
    if element == "X" || element == "O"
      counter += 1
    else
      #do nothing
    end
  end
  return counter
end 

def current_player(board)
  if turn_count(board).even? == true
    return "X"
  else
    return "O"
  end
end

def turn(board)
  puts "Please enter 1-9:"        # ask for input 
  input = gets.strip              # get input 
  index = input_to_index(input)   # convert input to index 
  if valid_move?(board, index)    # if move is valid,  
    move(board, index, current_player(board))   #make move for index
    display_board(board)          # & show board 
  else                            # else 
    turn(board)                   # ask input again until valid move
  end
end

def won?(board)
  


  
  
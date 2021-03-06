# display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid_move?
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return(true)
  else
    return(false)
  end
end

# position_taken?
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return(true)
  end
  return(false)
end

# input_to_index
def input_to_index(input)
  index = input.to_i - 1
end

# move
def move(array, index, value = "X")
  array[index] = value
end

# turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index, value = "X")
  display_board(board)
end

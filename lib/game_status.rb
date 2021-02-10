# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)
  WIN_COMBINATIONS.each do |win|
    p1 = win[0]
    p2 = win[1]
    p3 = win[2]

    ["X", "O"].each do |team|
      if board[p1] == team && board[p2] == team && board[p3] == team
        return win
      end
    end
  end
  return false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  return true if !won?(board) && full?(board)
  return false if !won?(board) && !full?(board)
  return false if won?(board)
end

def over?(board)
  return true if won?(board) || draw?(board) || full?(board)
  return false
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else return nil
  end
end

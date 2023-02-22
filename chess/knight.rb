require_relative 'piece.rb'
require_relative 'stepable.rb'
require_relative 'board.rb'
class Knight < Piece
include Stepable

  def move_diffs
    possible_moves = [[2, 1], [2, -1], [1, 2], [-1, 2], [1, -2], [-1, -2], [-2, 1], [-2, -1]]
  end

end
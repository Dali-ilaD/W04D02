class Knight
include Stepable

  def move_diffs
    possible_moves = [[2, 1], [2, -1], [1, 2], [-1, 2], [1, -2], [-1, -2], [-2, 1], [-2, -1]]
  end

end
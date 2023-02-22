require_relative 'piece.rb'
require_relative 'stepable.rb'
require_relative 'board.rb'


class King < Piece
include Stepable
    def initialize

    end

    def move_diffs

        possible_moves = [[1,0],[-1,0],[0,-1],[0,1],[1,1],[-1,1],[-1,-1],[1,-1]]
    end

end
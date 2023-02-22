require_relative 'board.rb'

class Piece
    attr_accessor :pos, :board, :color
    def initialize(color, board, pos)  
        @color = color
        @board = board
        @pos = pos
        # @name = name
    end

    def to_s
        s = " #{self.symbol} "

    end
    def moves
        
    end
end
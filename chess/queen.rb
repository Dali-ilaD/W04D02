require_relative 'piece.rb'
require_relative 'slideable.rb'
require_relative 'board.rb'

class Queen 
    include Slideable
    def initialize(color, board, pos)
        super(color, board, pos) 
    end
    
    def symbol
        ♕
    end
    
    def move_dirs
        HORIZONTAL_AND_VERTICAL_DIRS + DIAGONAL_DIRS 
    end
end
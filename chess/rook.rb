require_relative 'piece.rb'
require_relative 'slideable.rb'
require_relative 'board.rb'
class Rook 
    include Slideable
    
    def initialize(color, board, pos)
        super(color, board, pos) 
    end
    
    def symbol
    
    end
    
    def move_dirs
         # call piece's move_dirs(array of dirs)
        # iterate over move_dirs
            # call grow_unblocked for each dir
       arr = HORIZONTAL_AND_VERTICAL_DIRS
    end

end


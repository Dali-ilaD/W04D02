require_relative 'piece.rb'


module Slideable 
    HORIZONTAL_AND_VERTICAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]
    def moves() 
        # call piece's move_dirs(array of dirs)
        # iterate over move_dirs
            # call grow_unblocked for each dir


    end
    
    def valid?(pos)
        row, col = pos
        if !(0..7).include?(row) || !(0..7).include?(col)
            false
        elsif @board[pos] == nil
            false
        elsif @board[pos].color != self.color

    end

    def grow_unblocked_moves_in_dir(dx, dy)  # 0,1
        # create empty array
        # self.pos is starting pos
        # var = prev_pos = self.pos
        # cur_pos = self.pos[0] + dx, self.pos[1] + dy
        dir = []
        prev_pos = self.pos
        curr_pos = [self.pos[0] + dx, self.pos[1] + dy]

        while valid?(pos)

        
    end

end
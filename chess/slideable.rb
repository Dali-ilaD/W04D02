require_relative 'piece.rb'


module Slideable 
    HORIZONTAL_AND_VERTICAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]].freeze
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]].freeze

    def horizontal_and_vertical_dirs 
        @HORIZONTAL_AND_VERTICAL_DIRS = HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs 
        @DIAGONAL_DIRS = DIAGONAL_DIRS
    end

    def moves
        # call piece's move_dirs(array of dirs)
        # iterate over move_dirs
            # call grow_unblocked for each dir
            arr = []
            self.move_dirs.each do |dir|
                row, col = dir
                arr << grow_unblocked_moves_in_dir(row, col)
            end
            arr       
    end
    
    def valid?(pos)
        row, col = pos
        if !(0..7).include?(row) || !(0..7).include?(col)
            false
        # elsif @board[pos] != nil
        #     false
        elsif @board[pos].color == self.color
            false
        end
        true
    end

    def grow_unblocked_moves_in_dir(dx, dy)  # 0,1
        dir = []
        curr_pos = self.pos
        curr_pos = [self.pos[0] + dx, self.pos[1] + dy] 

        while valid?(curr_pos)
            dir << curr_pos
            break if @board[curr_pos].color != self.color  && !@board[curr_pos].is_a?(NullPiece)
            curr_pos = [curr_pos[0] + dx, curr_pos[1] + dy]
        end
        dir 
        
    end

end
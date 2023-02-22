require_relative 'piece.rb'

module Stepable 

    def valid?(pos)
        row, col = pos
        if !(0..7).include?(row) || !(0..7).include?(col)
            false
        elsif @board[pos].color == self.color
            false
        end
        true
    end

    def moves
        next_moves = []
        self.move_diffs.each do |move|
            row, col = move
            row = row + self.pos[0]
            col = col + self.pos[1]
            
            new_move = [row,col]
            
            if valid?(new_move)
                next_moves << new_move
            end
        end
        next_moves
    end

   
end
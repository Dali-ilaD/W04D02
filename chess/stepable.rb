require_relative 'piece.rb'

module Stepable 

    def valid?(pos)
        row, col = pos
        if !(0..7).include?(row) || !(0..7).include?(col)
            false
        elsif @board[pos] != nil
            false
        elsif @board[pos].color == self.color
            false
        end
        true
    end

    def moves
        next_moves = []
        self.move_diffs.each do |move|
            if valid?(move)
                next_moves << move
            end
        end
        next_moves
    end

    def move_diffs
        
    end


end
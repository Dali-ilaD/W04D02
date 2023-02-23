
require_relative 'piece.rb'


class Pawn < Piece

    # if start_pos is in row1 or row 6 then pawn can move straight ahead by either one or two box
    # otherwise it can only move diagonally by one box 
    def moves 
        row, col = self.pos
        pawn_moves = []
        if @at_start_row? == true
            pawn_moves << [row + 1, 0] 
            pawn_moves << [row + 2, 0]
        # elsif @at_start_row? == false
            
            #call bothe forward steps and side attacks


        end
    end
    def at_start_row?
        row, col = self.pos
        if row == 1 || row == 6
            return true
        end
        false
    end

    def valid?(pos)
        row, col = pos
        if !(0..7).include?(row) || !(0..7).include?(col)
            false
        elsif @board[pos].color == self.color
            false
        end
        true
    end

    def forward_dir
        #this can only diagonally right or left.
        #returns 1 or -1
        cur_pos = self.pos
        pos_in_front = [row + 1, col]
        # pawn is not at its starting position, and the postion in front of it is empty <<<<< then we can move <<<< so we return 1,
        # @at_start_row? == false && 

        #otherwise -1
        

    end

    def forward_steps
        # it only moves one step at a time. 
        # 1, 1 || 1, -1
        #it calls fowrd dir and give you 1 or 2 step if start row, you have to the box in front of you !! 


    end

    def side_attacks
        #checks if there are opponents in the diagnal


    end

    
end
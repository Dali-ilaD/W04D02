require_relative 'piece.rb'
class Board
    attr_reader :board
    def initialize
        @board = Array.new(8) {Array.new(8)}
        board[7][5] = Piece.new('queen') 
        board[7][1] = Piece.new('rook')
        board[7][2] = Piece.new('knight')
        board[0][5] = Piece.new('queen') 
        board[0][1] = Piece.new('rook')
        board[0][2] = Piece.new('knight')
        # board[8][5] = Piece.new 
        # board[8][1] = Piece.new
        # board[8][2] = Piece.new
        # board[0][5] = Piece.new 
        # board[0][1] = Piece.new
        # board[0][2] = Piece.new
        
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise 'no piece at this position'
        elsif !(0..7).include?(row) || !(0..7).include?(col)
            raise 'invalid position'
        end

        self[end_pos] = self[start_pos]
        self[start_pos] = nil
    end
end
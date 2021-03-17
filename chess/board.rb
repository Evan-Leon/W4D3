require_relative "./piece.rb"

class Board

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) {Array.new(8, nil)}
        populate 
    end

    def populate
        grid.each_with_index do |row, row_idx|
           row.each_with_index do |col, col_idx| 
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    self[[row_idx, col_idx]] = Piece.new([row_idx, col_idx])
                else
                    self[[row_idx, col_idx]] = nil
                end
            end
        end
    end

    def [](pos)
        x, y = pos 
        @grid[x][y]
    end

    def []= (new_pos, value)
        x, y = new_pos
        @grid[x][y] = value 
    end  

    def move_piece(start_pos, end_pos)
        raise "Position OUT of bounds" if !(valid_move?(start_pos) && valid_move?(end_pos))
        raise "No piece at start position" if self[start_pos] == nil 
        raise "Cannot move piece here!" if self[end_pos] != nil 

        piece = self[start_pos]

        self[start_pos] = nil
        self[end_pos] = piece


        true
    end

    def valid_move?(pos)
        row, col = pos 
        (0..7).include?(row) && (0..7).include?(col)
    end

end

if __file__ == $PROGRAM_NAME
    b = Board.new
    peace = Piece.new([0,0])
end 
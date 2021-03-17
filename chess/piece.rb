require_relative "slideable"

class Piece
    include Slideable

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)        # (color, board, pos)
        @color = color
        @board = board
        
        #^^need to come back and initialize in board
        @pos = pos    
    end

    def inspect
        pos
    end

    def moves(piece)
        piece.moves
    end


    def to_s

    end


    def empty?

    end


    def valid_moves
    
    end


    def pos=(val)
       @pos = val 
    end


    def Symbol?
        #each personal pieces type
        #slideable
        #stepable
        #pawn
        #null piece
    end


    private

    def move_into_check?(end_pos)

    end


    #new_move_positions
    #considered_positions
    #open_spaces

end
require_relative "stepable"

class King < Piece 
    include Stepable

    def symbol 
        "♚".colorize(color)
    end 

    private 

    def move_diffs
         [
        [0, -1], #left
        [0, 1],  #right
        [-1, 0], #up vertical
        [1, 0],
        [-1, -1], #up left
        [-1, 1],  #up right
        [1, -1], #down left
        [1, 1]
         ]
    end
end
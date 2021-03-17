module Slideable

    HORIZONTAL_DIRS = [
        [0, -1] #left
        [0, 1]  #right
        [-1, 0] #up vertical
        [1, 0] #down vertical
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1] #up left
        [-1, 1]  #up right
        [1, -1] #down left
        [1, 1]  #down right
    ].freeze
    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        final_arr = []


        final_arr
    end

end
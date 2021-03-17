module Slideable

    HORIZONTAL_DIRS = [
        [0, -1], #left
        [0, 1],  #right
        [-1, 0], #up vertical
        [1, 0], #down vertical
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1], #up left
        [-1, 1],  #up right
        [1, -1], #down left
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
        self.move_dirs.each do |direction|

        end

        final_arr
    end

    # private 

    def grow_unblocked_moves_in_dir(dx, dy)
        all_moves = []
        row, col = dx, dy 
        can_move = true
        
        horizontal_dirs.each do |coords|
            can_move = true
            while can_move
                new_x = row + coords[0]
                new_y = row + coords[1]
                new_pos = [new_x, new_y] 
                if valid_move?(new_pos) && (self[new_pos] == nil || self[new_pos] != self.color) 
                    all_moves << new_pos
                else 
                    can_move = false 
                end
            end
        end

        all_moves

                #need to cover
                #if out of bounds (IF)
                #if there is a piece there of same color (IF)
                #if there is a piece there of different color
                #if there is no piece there
    end

    def move_dirs
        #subclass will implement this
        raise "subclass has not implemented #move_dirs"
    end

end
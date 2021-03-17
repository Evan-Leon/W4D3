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
        moves = []
        self.move_dirs.each do |direction|

          moves <<grow_unblocked_moves_in_dir(direction[0], direction[1])
        end
        moves  
    end

    private 

    def grow_unblocked_moves_in_dir(dx, dy)
        all_moves = []
        row, col = self.pos[0], self.pos[1] 
        quu = [[row+dx,col+dy]]

        until quu.empty?
            current_pos = quu.shift 
            if valid_move?(current_pos) &&(self[current_pos] == nil || self[current_pos] != self.color)
                all_moves << current_pos 
                quu << [current_pos[0]+dx, current_pos[1]+dy]
            end
        end      
        all_moves
    end

    def move_dirs
        #subclass will implement this
        raise "subclass has not implemented #move_dirs"
    end

end
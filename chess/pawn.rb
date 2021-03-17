
class Pawn < Piece

    def symbol
        "♟︎".colorize(color)
    end


    def moves

    end

    private

    def at_start_row?
        if self.pos[0] == 1 && self.color == :black
            return true
        elsif self.pos[0] == 6 && self.color == :white
            return true
        end
        false
    end


    def forward_dir
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps
        poss_moves = []
        row_x, col_y = self.pos[0], self.pos[1]
        new_move = [row_x+forward_dir, col_y]
        poss_moves << new_move  
        poss_moves << [row_x + (2* forward_dir), coly_y] if self.at_start_row?

        poss_moves
    end


    def side_attacks
        row_x, col_y = self.pos[0], self.pos[1]
        possible_moves = []

        if self.color == :black
            new_pos = [[row_x + forward_dir, col_y + forward_dir], [row_x + forward_dir, col_y + (forward_dir*-1)]]
            new_pos.each do |coords|
                if self[coords].color == :white
                    possible_moves << coords 
                end
            end  
        else self.color == :white
            new_pos = [[row_x - 1, col_y - 1], [row_x - 1, col_y + 1]]
            new_pos.each do |coords|
                if self[coords].color == :black
                    possible_moves << coords 
                end
            end   

        end
        possible_moves
         #return array of poss moves if can side attack       
    end

end
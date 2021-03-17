
class Pawn < Piece

    def symbols
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

    end


    def side_attacks
        row_x, col_y = self.pos[0], self.pos[1]
        possible_moves = []
        if self.color == :black
            new_pos = [row_x + 1, col_y + 1]
            if self[new_pos].color == :white
                possible_moves << new_pos
                return true
            end
        end

        possible_moves
        
         #return array of poss moves if can side attack       

    end


end
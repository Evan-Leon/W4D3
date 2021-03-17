module Stepable

    def moves
      moves = []

      row, col = self.pos[0], self.pos[1]

      self.move_diffs.each do |direction|
        rowx, colx = direction[0], direction[1]
        next_pos = row + rowx, col + colx
        if valid_move?(next_pos) &&(self[next_pos] == nil || self[next_pos] != self.color)
          moves << next_pos
        end
      end

      moves
    end

    private  
    
    def move_diffs
      #Overwrtitten by subclass
      raise "subclass has not implemented #move_dirs"
    end
end
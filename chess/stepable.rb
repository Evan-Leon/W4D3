module Stepable

    def moves

    end

    private  
    
    def move_diffs
      #Overwrtitten by subclass
      raise "subclass has not implemented #move_dirs"
    end
end
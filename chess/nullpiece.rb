
class Nullpiece < Piece

    include Singleton
    #nullpiece initialized by Nullpiece.instance

    def initialize
        self.instance
    end


    def moves
         nill
    end


    def symbol
        [__]
    end

end
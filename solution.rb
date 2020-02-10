class Deck
    attr_accessor :cards 
    # RANK = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    # SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
        @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

        @rank.each do |rank|
            @suit.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        new_cards = @cards.shift

    end
end

class Card
    attr_accessor :rank, :suit, :deck
    

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        
    end
    
    def self.all
        
    end

end

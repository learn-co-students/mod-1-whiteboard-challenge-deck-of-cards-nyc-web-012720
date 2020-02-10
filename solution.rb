require 'pry'

class Deck
    attr_accessor :cards

    RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize()
        @cards = []

        SUITS.each{|suit|
            RANKS.each{|rank|
            @cards << Card.new(suit,rank)
            }
        }

    end

    def shuffle
        @cards.shuffle
    end

    def choose_card
        @cards.delete(@cards[rand(0..51)])
    end


end

class Card
    
    attr_accessor :rank, :suit

    def initialize(suit,rank)
        @rank = rank
        @suit = suit
    end

end

a = Deck.new
# binding.pry

#hello
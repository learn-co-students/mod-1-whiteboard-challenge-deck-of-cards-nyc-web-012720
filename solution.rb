require "pry"
class Deck
    attr_accessor :suits, :ranks
    def initialize
    @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @ranks =["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    end

    def cards

    end
end

class Card 
    attr_accessor :suit, :rank
    def initialize(suit,rank)
        @suit = suit
        @rank = rank
    end
end

class Deck
    attr_accessor :cards
    # rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    # suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
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
        new_card = @cards.shift()
    end
end

class Card
    attr_accessor :suit , :rank
    def initialize(suit, rank)
        @suit = suit 
        @rank = rank
    end
end
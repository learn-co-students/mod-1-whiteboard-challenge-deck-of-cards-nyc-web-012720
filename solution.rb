class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suits.each{|suit| ranks.each{|rank| cards  << Card.new(suit, rank)}}
    end

    def choose_card
        cards.delete_at(rand(cards.length))
    end

end


class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @suit = suit 
        @rank = rank
    end

end
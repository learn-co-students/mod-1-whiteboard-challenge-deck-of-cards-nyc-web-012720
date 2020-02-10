require 'pry'

class Deck
    attr_accessor :cards
    
    @@all = []
    def initialize
        @cards = self.make_deck
        @@all << self
    end

    def make_deck
        result = []
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit.each do |s|
            rank.each do |r|
                card = Card.new(suit, rank)
                result << card
            end
        end
        result
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
        #binding.pry 
    end
end

class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit 
    end
end

require "pry"

class Card

    attr_accessor :rank, :suit
    def initialize (suit, rank)
        @rank = rank
        @suit = suit
        
    end
   
        
end
    
class Deck 
        attr_accessor :cards, :rank, :suit
        
        def initialize
            @cards=[]
            
            @suits=["Hearts", "Clubs", "Diamonds", "Spades"]
        
            @ranks=["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        
            @suits.each {|suit| @ranks.each {|rank| @cards << Card.new(suit,rank) }}
            
        end
        
        def choose_card
            pick=@cards[rand(52)]
            @cards.delete(pick)
            
        end
        
    end
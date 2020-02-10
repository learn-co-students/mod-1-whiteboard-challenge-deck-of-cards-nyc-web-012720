require 'pry'

class Deck
    attr_accessor :cards 

    RANKS = ['A', '2', '3', '4' ,'5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
    SUITS = ['Hearts', 'Clubs', 'Spades', 'Diamonds']

    def initialize()
        @cards = []
        
        SUITS.each{|suit| 
            RANKS.each { |rank| 
                @cards << Card.new(suit, rank)
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

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end


end


d = Deck.new


### constant 2 arrays of suits and of ranks

## we loop through each array to create a card object 

### push the card object into a deck 



### DECK

### 52 card objs 

### 
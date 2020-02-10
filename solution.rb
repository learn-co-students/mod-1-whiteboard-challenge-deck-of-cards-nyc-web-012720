require 'pry'


class Card 
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit 
    end 
end 



class Deck

    attr_accessor :cards

    RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
            
        RANKS.each do |rank|
            SUITS.each do |suit|
                @cards << Card.new(suit, rank)
            end 
        end 
    end 

    def choose_card
        @cards.delete(@cards[rand(52)])
    end 
 
 
end

# binding.pry


   # def rank
    #     #when we pull a card out we need to define rank
    # end 

    # def 
    #     #pulls a rank 
    #     #13 ranks in a deck
    # end 

    # def card_suit
    #      #pulls a suit
    #      #4 suits in a deck
    # end 


    # binding.pr


    # def choose_cards
    #     @cards=rand(1..52)
    # end





# class Card 

#     attr_accessor :rank, :suit

#     def initialize(attributes)
#         attributes.each {|key, value| self.send(("#{key}"), value)}
#     end


#     def rank
#         puts ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
#     end
    
#     def suit
#         puts ["Hearts", "Clubs", "Diamonds", "Spades"]
#     end
    
    
# end
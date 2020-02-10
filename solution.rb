class Deck
	attr_accessor :cards

	def initialize
		suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
		rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] 
		@cards = []
		suits.each {|suit| rank.each {|rank| cards << Card.new(suit,rank)}}
	end

	def choose_card
		@cards.delete(@cards.sample)
	end

	# def choose_card
	# 	self.shuffle
	# 	return @cards.pop
	# end

	# def shuffle
	# 	@cards.sort {|a,b| rand(10)<=> rand(10) }
	# end
end

class Card

	attr_accessor :suit, :rank

	def initialize(suit,rank)
		@rank = rank
		@suit = suit
	end

end

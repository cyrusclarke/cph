class Card
	
	attr_accessor :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "the #{@rank} of #{@suit}"
	end

	def Card.random_card
		Card.new(rand(10), :spades)
	end

end

card = Card.new
card.output_card

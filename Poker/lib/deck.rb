require_relative 'poker'

class Deck

  attr_accessor :cards

  def initialize
    @cards = initialize_cards

  end

  def shuffle!
    self.cards = cards.shuffle
  end

  private

  def initialize_cards
    cards = []
    [*2..14].each do |card_val|
      cards << Card.new("hearts", card_val)
      cards << Card.new("clubs", card_val)
      cards << Card.new("diamonds", card_val)
      cards << Card.new("spades", card_val)
    end
    cards
  end

end

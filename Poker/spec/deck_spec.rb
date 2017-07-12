require 'rspec'
require 'deck'

describe Deck do

  let(:deck) { Deck.new }

  describe "#shuffle!" do
    it "should shuffle cards into a random order" do
      unshuffled_cards = deck.cards.dup
      deck.shuffle!
      expect(unshuffled_cards).not_to eq(deck.cards)
    end
  end
  #
  # describe "#deal"
  #
  # end
  #
  # describe "#size"
  #
  # end


end

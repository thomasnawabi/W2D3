require_relative 'poker'

class Hand
  attr_reader :cards

  def initialize(cards)
    # check if cards == 5, if not raise Error
    @cards = cards
  end

  def compare(other_hand)

  end

  private

  # Assign tier hand, only compare cards of hands that are on the same tier.

  # Need helper methods to identify hands and assign value

  # def self.identify_hand_tier()


end

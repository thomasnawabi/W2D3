require 'byebug'

require 'rspec'
require 'poker'

describe Hand do

  let(:hand1) { Hand.new() }
  let(:hand2) { Hand.new() }

  describe "#compare" do

    it "should return -1 if other hand is better" do
      # How to assign specific cards to hands when testing
      x = generate_royal_flush("hearts")
      y = generate_royal_flush("spades")

      debugger
    end

    it "should return 0 if both hands are equal"

    it "should return 1 if current hand is better"

  end

  # spec helpers
  def random_suit
    Card::SUIT_SYMBOLS.keys.map(&:to_s).sample
  end

  def values
    [*2..14]
  end

  def card_suits
    Card::SUIT_SYMBOLS.keys.map(&:to_s)
  end

  def generate_royal_flush(suit)
    cards = [
      Card.new(suit, 14),
      Card.new(suit, 13),
      Card.new(suit, 12),
      Card.new(suit, 11),
      Card.new(suit, 10)
    ]
    return Hand.new(cards)
  end

  def generate_straight_flush(suit, highest_val)
    # TODO: allow loop arounds for straights
    raise ArgumentError.new("Highest val is too low to generate flush.") if highest_val < 6
    cards = [
      Card.new(suit, highest_val),
      Card.new(suit, highest_val-1),
      Card.new(suit, highest_val-2),
      Card.new(suit, highest_val-3),
      Card.new(suit, highest_val-4)
    ]
    return Hand.new(cards)
  end

  def generate_four_of_a_kind(value)
    cards = [
      Card.new("spades", value),
      Card.new("hearts", value),
      Card.new("diamonds", value),
      Card.new("clubs", value),
      Card.new(card_suits.sample, values.without(value).sample)
    ]
    return Hand.new(cards)
  end

  def generate_full_house(value, value2)
    cards = [
      Card.new("spades", value),
      Card.new("hearts", value),
      Card.new("diamonds", value),
      Card.new("clubs", value2),
      Card.new("hearts", value2)
    ]
    return Hand.new(cards)
  end

  def generate_flush(suit)
    rando = values.sample(5)
    cards = [
      Card.new(suit, rando[0]),
      Card.new(suit, rando[1]),
      Card.new(suit, rando[2]),
      Card.new(suit, rando[3]),
      Card.new(suit, rando[4])
    ]
    return Hand.new(cards)
  end

  def generate_straight(highest_val)
    # TODO: allow loop arounds for straights
    raise ArgumentError.new("Highest val is too low to generate flush.") if highest_val < 6
    cards = [
      Card.new(card_suits.sample, highest_val),
      Card.new(card_suits.sample, highest_val-1),
      Card.new(card_suits.sample, highest_val-2),
      Card.new(card_suits.sample, highest_val-3),
      Card.new(card_suits.sample, highest_val-4)
    ]
    return Hand.new(cards)
  end

  def generate_three_of_a_kind(value)
    rando = values.sample(2)
    cards = [
      Card.new("spades", value),
      Card.new("hearts", value),
      Card.new("diamonds", value),
      Card.new("clubs", rando[0]),
      Card.new("hearts", rando[1])
    ]
    return Hand.new(cards)
  end

  def generate_two_pair(value)
    rando = values.sample(3)
    cards = [
      Card.new("spades", value),
      Card.new("hearts", value),
      Card.new("diamonds", rando[3]),
      Card.new("clubs", rando[0]),
      Card.new("hearts", rando[1])
    ]
    return Hand.new(cards)
  end


  class Array
    def without(number)
      self.reject{|n|n==number}
    end
  end


end

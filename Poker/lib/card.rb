require_relative 'poker'

class Card

  SUIT_SYMBOLS = {
    :hearts => " ♥️ ",
    :spades => " ♠️ ",
    :diamonds =>  " ♦️ ",
    :clubs =>  " ♣️ "
  }

  attr_reader :suit , :number

  def initialize (suit, number)
    @suit = suit
    @number = number
    @symbol = SUIT_SYMBOLS[suit.to_sym]
  end

end

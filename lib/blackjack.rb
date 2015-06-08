#!/usr/bin/env ruby

# YOUR CODE HERE

 SUITS = %w[♦ ♣ ♠ ♥]
 VALUES = %w[2 3 4 5 6 7 8 9 10 J K Q A]

class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end

class Deck
  attr_reader :deck
  def initialize
    @deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit,value)
      end
    end
  end

  def deck_size
    @deck.length
  end

  def shuffle
    @deck.shuffle!
  end
end

class Hand
end

#!/usr/bin/env ruby

# YOUR CODE HERE

 SUITS = %w[♦ ♣ ♠ ♥]
 VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A]

class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
    @point = 0
  end
  def point
    if value.class == Fixnum
      @point = value
    elsif value == 'A'
      @point = 'ace'
    elsif value.class == String
      @point = 10
    else
      puts "sombody messed up"
    end
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
    @deck = @deck.shuffle
  end

  def deal
    @deck.shift
  end
end

class Hand
  attr_accessor :hand
  def initialize
    @hand = []
  end
end

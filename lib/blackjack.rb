#!/usr/bin/env ruby

puts "Welcome to blackjack!"

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
    if not ['J', 'Q', 'K', 'A'].include? @value
      @point = @value.to_i
    elsif not @value == 'A'
      @point = 10
    else
      @point = 'ace'
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
  attr_accessor :hand, :score
  attr_reader :points
  def initialize
    @hand = []
    @score = 0
  end

  def score
    if @hand.length > 0
      aces = 0
      @hand.each do |card|
        unless card.point == 'ace'
          @score += card.point
        else
          aces +=1
        end
      end
      #handle aces----------------
      while aces > 0
        if (score + 11) <= 21 && aces < 2
          score += 11
        else
          score += 1
        aces -=1
      end
      #--------------------------
    else
      "you ain't got a hand"
    end
    @score
  end
end

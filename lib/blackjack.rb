#!/usr/bin/env ruby
require 'pry'
require_relative 'card'
require_relative 'deck'
require_relative 'hand'

puts "Welcome to blackjack!"

dealer = Hand.new
player = Hand.new

players = {'Dealer' => dealer, 'Player' => player}

deck = Deck.new


def card_dealt(player_name, card)
  puts "#{player_name} was dealt: #{card}"
end

#deal cards to players one at a time
count = 0
deck.shuffle
while count < (players.length)*2
  players.each do |player_name,hand|
    card = deck.deal
    hand.hand << card
    card_dealt(player_name, card.suit + "" + card.value)
    count +=1
  end
end




# puts "Hit or stand (H/S):"
#
#
#
#
#
#
# # Player was dealt
# # Player score:
# #
# #
# # Dealer was dealt
# # Dealer score:
# #
# #
# #
# # You win!
# # Bust! You lose...

require 'rspec'
require 'pry'
require_relative "../lib/blackjack"

describe Card do
  it 'has a suit and value' do
    test_card = Card.new("♥","Q")
    expect(test_card.suit).to eq("♥")
    expect(test_card.value).to eq("Q")
  end
  it 'has a suit and value' do
    test_card = Card.new("♣","6")
    expect(test_card.suit).to eq("♣")
    expect(test_card.value).to eq("6")
  end
end

describe Deck do
  describe "#initialize" do
    it 'has 52 card objects' do
      test_deck = Deck.new()
      expect(test_deck.deck_size).to eq(52)
      # expect(test_deck.).to eq(52)
    end
  end
  describe "#shuffle" do
    it 'shuffles the deck' do
      test_deck = Deck.new()
      test_cards = test_deck.deck
      expect(test_deck.deck).to eq(test_cards)
      test_deck.shuffle
      expect(test_deck.deck).not_to eq(test_cards)
    end
  end
  describe "#deal" do
    test_deck = Deck.new()
    it 'removes first card object from deck' do
      second_card = test_deck.deck[1]
      test_deck.deal
      expect(test_deck.deck[0]).to eq(second_card)
      expect(test_deck.deck_size).to eq(51)
    end
    it 'and returns card' do
      first_card = test_deck.deck[0]
      dealt_card = test_deck.deal
      expect(dealt_card).to eq(first_card)
    end
  end
end


# describe Hand do
#   it 'has 2 card objects' do
#     test_deck = Deck.new()
#     expect(test_deck.deck_size).to eq(52)
#     # expect(test_deck.).to eq(52)
#   end
# end

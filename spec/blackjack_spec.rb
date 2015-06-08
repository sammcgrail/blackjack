require 'rspec'
require_relative "../lib/blackjack"

describe Card do
  it 'has a suit and value' do
    testcard = Card.new("♥","Q")
    expect(testcard.suit).to eq("♥")
    expect(testcard.value).to eq("Q")
  end

  it 'has a suit and value' do
    testcard = Card.new("♣","6")
    expect(testcard.suit).to eq("♣")
    expect(testcard.value).to eq("6")
  end
end

describe Deck do
  describe "#initialize" do
    it 'has 52 card objects' do
      testdeck = Deck.new()
      expect(testdeck.deck_size).to eq(52)
      # expect(testdeck.).to eq(52)
    end
  end
  describe "#shuffle" do
    it 'shuffles the deck' do
      testdeck = Deck.new()
      suit = testdeck.deck[0].suit
      value = testdeck.deck[0].value
      testdeck.shuffle
      expect(testdeck.deck[0].suit).not_to eq(suit)
      expect(testdeck.deck[0].value).not_to eq(value)
    end
  end
end


# describe Hand do
#   it 'has 2 card objects' do
#     testdeck = Deck.new()
#     expect(testdeck.deck_size).to eq(52)
#     # expect(testdeck.).to eq(52)
#   end
# end

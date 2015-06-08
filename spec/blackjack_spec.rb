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

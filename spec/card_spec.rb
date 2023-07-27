class Card
  attr_accessor :rank,:suit
  def initialize(rank,suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before do
  #   @card = Card.new('Ace','Spades')
  # end
  # def card
  #   Card.new('Ace','Spades')
  # end
  let(:card) { Card.new('Ace','Spades') }

  it 'has a rank that can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end
  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
  it 'has a custom message' do
    card.suit = 'nonsense'
    message = 'Spades'
    expect(card.suit).to eq(message), "hey, i expected #{message} but got #{card.suit}."

  end
end
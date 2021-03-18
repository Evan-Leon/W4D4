require "deck"

describe Deck do
    subject(:deck) { Deck.new }

    describe "#initialize" do
    let(:cards) { double ("card", :suit => :heart)
        it "should return 52 cards" do
            expect(deck.count).to eq(52)
        end

        it "should have 4 suits of equal size" do
            expect(deck.cards.select { |card| card.suit == :heart}
            end
        end
    end
end
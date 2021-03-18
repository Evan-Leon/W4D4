require "card"

describe Card do
    subject(:card) { Card.new(:heart, :five) }

    describe "#initialize" do
        it "should accept suit and value as arguments" do
            expect(card.suit).to be(:heart)
            expect(card.value).to be(:five)
        end
    end
end
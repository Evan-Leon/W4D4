require "hanoi"

describe TowerHanoi do
    subject(:game) {TowerHanoi.new}
    describe "initialize" do
        context "properly instantiates a game" do
            it "initializes TowerHanoi with three inner arrays" do
                expect(game.discs.length).to eq(3)
            end

        end
    end

    describe "#move" do
        before(:each) { game.move } 
        it "moves one disk to another disc pile" do
            expect(game.discs[1]).to eq([1])
        end
    end
end
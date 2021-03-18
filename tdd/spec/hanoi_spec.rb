require "hanoi"

describe TowerHanoi do
    subject(:game) {TowerHanoi.new}
    describe "initialize" do
        context "properly instantiates a game" do
            it "initializes TowerHanoi with three inner arrays" do
                expect(game.discs.length).to eq(3)
            end

            it "initializes TowerHanoi with 2 empty inner arrays" do 
                expect(game.discs[1].empty?).to be true  
                expect(game.discs[2].empty?).to be true  
            end
        end
    end

    describe "#move" do
        
        it "can move on to larger disc" do 
            game.move(0, 2)
            game.move(0, 1)
            expect {game.move(2, 1)}.not_to raise_error 
        end

        it "can not move from an empty pile" do 
            expect{game.move(1, 2)}.to raise_error("can not move from an empty pile")
        end
    end

    describe "#won?" do 
        let(:winner) {}
        
        it "when all discs are moved to pile 1" do 
            game.move(0, 1)
            game.move(0, 2)
            game.move(1, 2)
            game.move(0, 1)
            game.move(2, 0)
            game.move(2, 1)
            game.move(0, 1)

            expect(game).to be_won
        end

         it "when all discs are moved to pile 2" do 
            game.move(0, 2)
            game.move(0, 1)
            game.move(2, 1)
            game.move(0, 2)
            game.move(1, 0)
            game.move(1, 2)
            game.move(0, 2)

            expect(game).to be_won
        end
    end

    describe "#valid_move?" do 
        let(:board) {double("board", valid_move?:true)}
        
        it "should return true if valid move and should return flase if not a valid move" do 
            allow(board).to receive(:valid_move?).and_return(false)
        end
    end
end
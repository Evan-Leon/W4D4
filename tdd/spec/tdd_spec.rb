require "tdd"

    describe Array do 
        let(:array) { [1, 2, 1, 3, 3]}
        describe "#my_uniq" do 

            it "removes duplicates" do 
                expect(array.my_uniq).to eq([1, 2, 3])
            end
        end

        describe "#two_sum" do
            let(:array) { [-1, 0, 2, -2, 1] }

            it "finds all pairs of positions where the elements at those positions sum to 0" do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
            end
        end

        describe "#my_transpose" do 
            let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

            it "transposes rows and columns" do
                expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
            end
        end
    end

    describe "#stock_picker" do  
        let(:array) {[2, 5, 10, 4, 1, 100, 7]}   
        it "returns array where first element is best day to buy, second ele is best day to sell" do
            expect(stock_picker(array)).to eq([4, 5])
        end
    end

    



    


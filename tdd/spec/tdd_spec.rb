require "tdd"

    describe Array do 
        let(:array) { [1, 2, 1, 3, 3]}
        describe "#my_uniq" do 

            it "removes duplicates" do 
                expect(array.my_uniq).to eq([1, 2, 3])
            end
        end

    end
        # let(:array) { [1, 2, 1, 3, 3]}
        # let(:uniq_arr){my_uniq(array.dup) }
        # it "removes duplicates" do 
        #     array.each do |ele|
        #         expect(uniq_arr.count(ele)).to eq(1)
        #     end
        # end

    


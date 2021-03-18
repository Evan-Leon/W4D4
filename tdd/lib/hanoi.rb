require "rspec"

class TowerHanoi

    attr_reader :discs

    def initialize
        @discs = [[3, 2, 1], [], []]
    end

    def move(from_pile, to_pile) 
        # raise "NOT ALLOWED to move on smaller discs" unless valid_move?(from_pile, to_pile)
        raise "can not move from an empty pile" if @discs[from_pile].empty?
        @discs[to_pile] <<@discs[from_pile].pop
    end

    def won?
        @discs[0].empty? && @discs[1..2].any?{|ele| ele.empty?}
    end

    def valid_move?(from_pile, to_pile)
        arr = [from_pile, to_pile]
        !@discs[from_pile].empty? && @discs[to_pile].empty? || @discs[two_pile][-1] > @discs[from_pile][-1]
        return false if arr.none? {|i| i.between?(0,2)} 
    end

end
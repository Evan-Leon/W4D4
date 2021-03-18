require "rspec"
class Array 

    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele  
            end
        end
        new_arr
    end

    def two_sum
        new_arr = []
        self.each_with_index do |num1, i1|
            self.each_with_index do |num2, i2|
                new_arr << [i1, i2] if i2 > i1 && num1 + num2 == 0
            end
        end

        new_arr
    end

    def my_transpose
       height = self.length 
       width = self[0].length  
       results = Array.new(height) {Array.new(width)}
       (0...height).each do |row|
        (0...width).each do |col|
            results[col][row] = self[row][col]
        end
       end
       results 
    end
end

def stock_picker(arr)
    max = arr.max 
    min = arr.min 
    ((arr.length - 1).downto(0)).each do |i1|
        ((arr.length - 1).downto(0)).each do |i2|
            if i2 > i1 
                return [arr.index(min), arr.index(max)]
            end
        end
    end
end
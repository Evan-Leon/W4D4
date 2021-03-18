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
end
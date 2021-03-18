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
end
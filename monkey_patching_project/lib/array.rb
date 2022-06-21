# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
       return nil if self.empty?
        self.max - self.min 
    end

    def average 
       return nil if self.empty?
        self.sum/self.count.to_f
    end 

    def median 
        return nil if self.empty?
        sorted = self.sort
         idx = sorted.count/2
        if self.count.odd? 
            return sorted[idx]
        else self.count.even?
            (sorted[idx - 1] + sorted[idx])/2.0
        end 
    end 

    def counts 
        self.tally
    end 

    def my_count(value)
       count = 0 
       self.each do |num|
            if num == value 
                count += 1 
            end 
        end 
       count
    end 

    def my_index(value)
        return nil if !(self.include?(value))
        self.each.with_index do |num, idx| 
           if num == value 
            return idx 
           end 
        end 
    end 

    def my_uniq
        self.tally.keys
    end 

    def my_transpose
        newarray = Array.new(self.length){Array.new(self[0].length)}
        
        self.each.with_index do |subarray, idx1|
            subarray.each.with_index do |num, idx2|
                newarray[idx1][idx2] = self[idx2][idx1]
            end 
        end 
        newarray
    end 
                
end



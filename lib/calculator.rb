class Calculator
    def self.add(numbers)
        # Check if the input is ""
        if numbers.empty?
            return 0
        end
        if numbers.include?("\n")
            numbers.gsub!("\n", ",")
        end
        numbers = numbers.split(",")
        # Check if the input is a single number
        if numbers.length == 1
            return numbers[0].to_i
        end
        sum = 0 
        numbers.each { |number|  sum+= number.to_i }
        return sum
    end
end
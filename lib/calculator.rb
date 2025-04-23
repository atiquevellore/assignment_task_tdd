class Calculator
    def self.add(numbers)
        # Check if the input is ""
        if numbers.empty?
            return 0
        end
        numbers = numbers.split(",")
        # Check if the input is a single number
        if numbers.length == 1
            return numbers[0].to_i
        end
    end
end
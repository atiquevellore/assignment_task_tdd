class Calculator
    def self.add(numbers)
        sum = 0
        delimiter_pattern = %r{//(.+)\n}

        # Check if the input is ""
        if numbers.empty?
            return 0
        end
        # handle negative numbers
        negative_numbers = numbers.scan(/-\d+/)
        unless negative_numbers.empty?
          raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
        end
        
        if numbers.match?(delimiter_pattern)
            # Extracts  the custom delimiter and escape it to handle special regex characters like ., *, |
            delimiter = Regexp.escape(numbers.match(delimiter_pattern)[1])
            numbers = numbers.sub(delimiter_pattern, '')             # Remove the delimiter declaration part (e.g., "//;\n")
            numbers = numbers.gsub(/#{delimiter}/, ',')              # Replace all occurrences of the custom delimiter with commas
        else
            # Replace new line characters with commas
            numbers = numbers.gsub("\n", ",")
        end
        numbers = numbers.split(",")
        # Check if the input is a single number
        if numbers.length == 1
            return numbers[0].to_i
        end
        numbers.each { |number|  sum+= number.to_i }
        return sum
    end
end
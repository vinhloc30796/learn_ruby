class Fixnum
    def in_words
        digit = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", 
                 "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        tens = ["thousand", "million", "billion", "trillion"]
        
        array = []
        
        number = self.to_s.split("").map { |member| member.to_i }.reverse
        
        digit[20], digit[30], digit[40], digit[50], digit[60], digit[70], digit[80], digit[90] = 'twenty', "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"
        
        if self <= 20
            digit[self]
            
        elsif number.size == 2
            [digit[number[1] * 10], digit[number[0]]].select { |member| member != "zero"}.join(" ")
            
        elsif number.size == 3
            array << digit[number[2]] + " hundred"
            self % 100 <= 20 ? array << digit[self % 100] : array.concat([digit[number[1] * 10], digit[number[0]]])
            array.select { |member| member != "zero"}.join(" ").strip
            
        elsif number.size <= 15
            sizing = (number.size / 3.0).ceil - 1
            
            array << (self / 10 ** (sizing * 3)).in_words + " #{tens[sizing - 1]}"
            array << (self % 10 ** (sizing * 3)).in_words
            array.select { |member| member != "zero"}.join(" ").strip
        end
    end
end
$little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "over", "to", "up", "and", "as", "but", "or", "nor"]

class Book
    
    def initialize
        def title=(string)
            @title = string.capitalize.split.collect { |word| $little_words.include?(word)? word : word.capitalize }.join(" ")
        end
        
        def title
            @title
        end
    end
end
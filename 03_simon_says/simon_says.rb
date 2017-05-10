#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, reps = 2)
    arr = []
    reps.times { arr << string }
    arr.join(" ")
end

def start_of_word(string, pos)
    string[0..pos - 1]
end

def first_word(string)
    string.split(" ")[0]
end

def titleize(string)
    little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "over", "to", "up", "and", "as", "but", "or", "nor"]
    string.capitalize.split.collect { |word| little_words.include?(word)? word : word.capitalize }.join(" ")
end
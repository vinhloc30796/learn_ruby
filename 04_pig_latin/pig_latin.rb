#write your code here
def translate(string)
    string.split.collect { |word| word[word.index(/((?<![Qq])([uU])|[aeioAEIO])/)..-1] + word[0, word.index(/((?<![Qq])([uU])|[aeioAEIO])/)] + "ay"}.join(" ")
end
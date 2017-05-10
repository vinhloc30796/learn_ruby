def reverser
    yield.split.collect { |word| word.reverse }.join(" ")
end

def adder(number_to_add = 1)
    yield + number_to_add
end

def repeater(reps = 1, &block)
    reps.times { block.call }
end
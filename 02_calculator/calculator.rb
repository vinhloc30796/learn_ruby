#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.inject(:+) or 0
end

def multiply(array)
    array.inject(:*) or 0
end

def power(a, b)
    a ** b
end

def factorial(a)
    (a == 0)? 1 : (1..a).inject(:*)
end
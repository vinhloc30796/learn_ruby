class Array
    def sum
        self.inject(:+) or 0
    end
    
    def square
        self.collect { |member| member ** 2 }
    end
    
    def square!
        self.collect! { |member| member ** 2 }
    end
end
class Temperature
    def initialize(opts={})
        opts.each { |k,v| instance_variable_set("@#{k}", v) }
    end
    
    def self.from_celsius(celsius)
        self.new({c: celsius})
    end
    
    def self.from_fahrenheit(fahrenheit)
        self.new({f: fahrenheit})
    end
    
    def in_fahrenheit
        @f or @c*9.0/5.0 + 32
    end
    
    def in_celsius
        @c or (@f-32)*5.0/9.0
    end
end

class Celsius < Temperature
    def initialize(celsius)
        super({c: celsius})
    end
end
    
class Fahrenheit < Temperature
    def initialize(fahrenheit)
        super({f: fahrenheit})
    end
end
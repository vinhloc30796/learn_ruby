class RPNCalculator
    attr_accessor :token_storage
    
    def initialize
        @token_storage = []
    end
    
    def push(num)
        token_storage << num    
    end
    
    def pop
        raise "calculator is empty" if token_storage.size == 0
        token_storage.pop
    end
    
    def plus
        token_storage << pop + pop
    end
    
    def minus
        token_storage << - pop + pop
    end
    
    def times
        raise "calculator is empty" if token_storage.size == 0
        token_storage << pop * pop
    end
    
    def divide
        raise "calculator is empty" if token_storage.size == 0
        token_storage << 1.0 / pop * pop
    end
    
    def value
        token_storage[-1] 
    end
    
    def tokens(str)
        str.split.collect { |mem| mem =~ /\d/ ? mem.to_i : mem.to_sym }
    end
    
    def evaluate(str)
        tokens(str).each do |mem|
            case mem
                when :+ 
                    plus
                when :- 
                    minus
                when :* 
                    times
                when :/
                    divide
                else
                    token_storage << mem
            end
        end
        value
    end
end
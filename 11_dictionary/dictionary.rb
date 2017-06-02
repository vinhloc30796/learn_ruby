class Dictionary
    def initialize
        @internal_dict = {}
    end
    
    def entries
        @internal_dict
    end
    
    def add(input)
        case input
            when Hash then @internal_dict.merge!(input)
            when String then @internal_dict[input] = nil
        end
    end
    
    def keywords
        @internal_dict.keys.sort
    end
    
    def include?(key)
        self.keywords.include?(key)
    end
    
    def find(string)
        @internal_dict.select { |k, v| k.to_s.start_with?(string) or v.to_s.start_with?(string) }
    end
    
    def printable
        @internal_dict.keys.sort.map { |key| 
            "[#{key}] \"#{@internal_dict[key]}\""
        }.join("\n")
    end
end
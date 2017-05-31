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
        printed = ""
        @internal_dict.keys.sort.each_with_index { |key, index| 
            printed << "[#{key}] \"#{@internal_dict[key]}\""
            printed << "\n" unless index == @internal_dict.size - 1
        }
        printed
    end
end
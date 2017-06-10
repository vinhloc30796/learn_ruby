class XmlDocument
    attr_accessor :indent, :indent_count
    
    def initialize(indent = false)
        @indent = indent
        @indent_count = 0
    end
    
    def method_missing(m, options = {}, &block)
        doc = ""
        doc << "<#{m}" << options.keys.map { |key| " #{key}='#{options[key]}'" }.join
        if block_given?
            doc << ">"
            
            doc << "\n" if indent
            
            @indent_count += 1
            doc << ("  " * @indent_count) if indent
            
            doc << yield
            
            @indent_count -= 1
            doc << ("  " * @indent_count) if indent
            
            doc << "</#{m}>"
            doc << "\n" if indent
            
        else
            doc << "/>"
            doc << "\n" if indent
        end
        doc
    end
end
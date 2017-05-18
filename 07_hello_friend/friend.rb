class Friend
    def initialize
    end
    
    def greeting(name = "")
        (name == "")? "Hello!" : "Hello, #{name}!"
    end
end
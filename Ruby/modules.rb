module Tools
    def sayhello(name)
        puts "Hello #{name}"
    end
    def sayhi(name)
        puts "Hi #{name}"
    end
end 

include Tools

Tools.sayhi("Lucas")
class Book 
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end


class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honor()
        if @gpa>= 8
            return true
        else
            return false
        end
    end
end

book1 = Book.new("Antifrágil", "Taleb", 512)
book2 = Book.new("Black Swam","Taleb",  432)

puts book1.title
puts book2.title


student1 = Student.new("Lucas", "Computer Science", 10)

puts student1.major
puts student1.has_honor

# Inheritance

class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_salad
        puts "The chef makes salad"
    end
    def make_special_dishes
        puts "The chef makes bbq ribs"
    end
end

class ItalianChef < Chef
    def make_special_dishes
        puts "The chef makes eggplant parma"
    end
    def make_pizza
        puts "The chef makes pizza"
    end
end

italian = ItalianChef.new()
italian.make_pizza
italian.make_special_dishes
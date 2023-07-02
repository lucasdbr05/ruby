def sayhi(name="no name", age = -1)
    puts ("Hello "+name+", you are "+age.to_s)

end

def cube(num)
    return num*num*num
end

sayhi("Lucas",18)

puts cube(100)
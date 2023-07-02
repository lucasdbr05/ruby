index = 1

while index <= 5
    puts index
    index += 1
end

friends = ["Kevin", "Karen", "Oscar", "Lucas", "Cano"]

for friend in friends
    puts friend
end


friends.each do |friend|
    puts friend
end

for i in 0..5
    puts friends[i]
end

5.times do |index|
    puts friends[index]
end

=begin
power function
=end

def pow(base_num, pow_num)
    result = 1
    
    pow_num.times do |i|
        result *= base_num
    end
    
    return result
end

puts pow(10, 5)



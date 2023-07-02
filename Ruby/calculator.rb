puts "Enter a nnumber: "
num1 = gets.chomp().to_f

puts "Enter a nnumber: "
num2 = gets.chomp().to_f

puts "Enter a operation: "
op = gets.chomp()

avaiable_ops = "+-/*"

if avaiable_ops.include? op
    if op == "+"
        puts(num1+num2)
    elsif op == "-"
        puts(num1-num2)
    elsif op == "*"
        puts(num1*num2)
    elsif op == "/"
        puts(num1/num2)
    end
else
    puts "Operation not available"
end
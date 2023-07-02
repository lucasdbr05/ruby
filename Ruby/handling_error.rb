begin
    num = 10/0
    num = 10/"1"
rescue ZeroDivisionError
    puts "Division by zero"
rescue 
    puts "..."
end
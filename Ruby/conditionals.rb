ismale=true 
istall = true

if ismale and istall
    puts "You are male and tall"
elsif ismale and !istall
    puts "You are male and not tall"
elsif !ismale and istall
    puts "You are not male and tall"
else
    puts "You are not male and not tall "
end


def max(num1, num2, num3)
    if num1>= num2 and num1>=num3
        return num1
    elsif num2>= num3 and num2>=num1
        return num2
    elsif num3>= num2 and num3>=num1
        return num3
    end
end

puts max(10, 20, 30)


def get_day_name(day)
    day_name = ""

    case day
    when "sun"
        day_name = "Sunday"
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednsday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    else
        day_name = "Invalid Abbreviation"

    end



    return day_name
end

puts get_day_name("mon")
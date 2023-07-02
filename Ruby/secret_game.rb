secret_word = "Fluminense"
word = ""
out_of_guesses = false
guesses_count = 0
guesses_limit = 10


while word != secret_word and !out_of_guesses
    if guesses_count < guesses_limit
        puts "Enter guess: "
        word = gets.chomp()
        guesses_count += 1
    else
        out_of_guesses = true
    end
    
end

if out_of_guesses
    puts "You lose"
else
    puts "You won"
end

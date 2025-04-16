def palindrome?(string)
    new_string = ""
    string = string.downcase
    n = string.length
    for i in 0..(n-1)
        if string[i].match?(/[[:alpha:]]/)
            new_string += string[i]
        end
    end
    string = new_string.dup
    
    return new_string == string.reverse!
end

def count_words(string) 
    hash = {}
    words = string.split(" ")
    words.each do |word|
        word = word.downcase
        word = word.gsub(/[^a-z]/i, '')
        if !hash.key?(word)
            hash[word] = 0
        end
        hash[word] = hash[word] + 1
    end
    return hash
end

# 1
# A)
puts(palindrome?("A man, a plan, a canal -- Panama")) 
puts(palindrome?("Madam, I'm Adam!"))
puts(palindrome?("abacadabra"))
puts(palindrome?("abacaba"))
puts(palindrome?("abac Aba"))
puts(palindrome?("fluminense"))

# B)
puts(count_words("A man, a plan, a canal -- Panama"))
puts(count_words("Doo bee doo bee doo"))
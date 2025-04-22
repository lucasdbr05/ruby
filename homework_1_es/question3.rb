def combine_anagrams(words)
  hash = {}
  words.each do |word|
    aux = word.downcase.chars.sort(&:casecmp).join
    
    if(!hash.key?(aux)) 
      hash[aux] = []
    end

    hash[aux].append(word)
  end

  anagrams = []

  hash.each do |key, value|
    anagrams.append(value)
  end

  return anagrams
end


puts(combine_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams','scream']).inspect)
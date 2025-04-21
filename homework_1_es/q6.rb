def _palindrome?(data)
  if(data.class.to_s == "String")
    new_string = data.downcase.gsub(/[^a-z]/i, '')
    data = new_string.dup
    return new_string == data.reverse!
  end 
  new_data = data
  return data == data.reverse

  
end

class Numeric
  @@currencies = {'dollar'=> 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

  def method_missing(method_id, *args, &block) 
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(method_id)
    singular_currency = method_id.to_s.gsub(/s$/,'') # or .chomp('s') altho would that cut an s out of anywhere??
    if @@currencies.has_key?(singular_currency)
      self * (1/@@currencies[singular_currency])
    else
      super
    end
  end
end


class String
  def palindrome?
    return _palindrome?(self)
  end
end

module Enumerable
  def palindrome?
    return _palindrome?(self)
  end
end


# A)
puts(5.dollars.in(:euros))
puts(10.euros.in(:rupees))

#B)
puts("foo".palindrome?)
puts("A man, a plan, a canal -- Panama".palindrome?)
puts("Madam, I'm Adam!".palindrome?)
puts("abacadabra".palindrome?)


#C)
puts([1,2,3,2,1].palindrome?)
puts([1,2,3,1,2].palindrome?)
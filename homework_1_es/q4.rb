class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
   @name = name 
   @calories = calories
  end

  def calories
    return @calories
  end

  def name=(calories)
    @calories = calories
  end

  def name
    return @calories
  end

  def name=(calories)
    @calories = calories
  end

  def healthy?
    return @calories < 200
  end

  def delicious?
   return true
  end
end


class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def flavor 
    return @flavor
  end
  def flavor=(flavor)
    @flavor = flavor
  end
  
  def delicious?
    @flavor.downcase == "black licorice" ? false : true
  end
end



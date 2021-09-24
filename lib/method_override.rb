class Product
  attr_reader :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
  
  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :ruuning_time
  
  def initialize(name, price, ruuning_time)
    super(name, price)
    @ruuning_time = ruuning_time
  end
  
  def to_s
    "#{super}, ruuning_time: #{ruuning_time}"
  end
end

product = Product.new('A great movie', 1000)
puts product.to_s

dvd = DVD.new('An awesome film', 3000, 120)
puts dvd.to_s


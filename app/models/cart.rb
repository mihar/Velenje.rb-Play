class Cart
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    @items << CartItem.new(product) unless has?(product)
  end
  
  def has?(product)
    items.include?(product)
  end
  
  def empty?
    items.empty?
  end
  
  def total_price
    price = 0
    @items.each do |item| 
      price += item.price
    end
    price
  end
  
  def size
    items.size
  end
end
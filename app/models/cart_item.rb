class CartItem
  attr_reader :product
  attr_accessor :quantity
  
  def initialize(product)
    @product = product
    @quantity = 1
  end
  
  def price
    product.price * quantity
  end
  
  # def increment_quantity
  #   @quantity += 1
  # end
  # 
  # def decrement_quantity
  #   @quantity -= 1 if @quantity > 0
  # end
  
  def to_li
    li = LineItem.new
    li.track = product
    li.quantity = quantity
    li.total_price = price
    li
  end
  
  def to_s
    product
  end
end
class Order < ActiveRecord::Base
  has_many :line_items
  
  def add_items_from_cart(cart)
    cart.items.each do |item|
      self.line_items << item.to_li
    end
  end
end

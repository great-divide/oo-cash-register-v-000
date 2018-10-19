<<<<<<< HEAD
require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :items, :last
 
  
 
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price.to_f * quantity)
    quantity.times do
      self.items << title
    end
    self.last = (price*quantity)
  end
 
  
  def apply_discount
    if self.discount > 0
      self.total += -self.discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.last
  end
 
end
# binding.pry
=======

class CashRegister
  
  def initialize
    @total = 0
    discount = self.apply_discount
  end
  
  def total
    @total = total
  end
  
  def apply_discount
  end
end
>>>>>>> 9b2d1fba3bf5c734f62296d180c04fc7c78665c5

require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    bruh = price * quantity
    @last_transaction = bruh
    self.total = self.total + bruh
     quantity.times do @items << title
     end
  end

  def apply_discount
    if self.discount != 0
     god = self.discount.to_f / 100.0 
     b = self.total * god
     self.total = self.total - b
     return "After the discount, the total comes to $#{self.total.to_i}."
    else
     return "There is no discount to apply."
   end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
  end




end
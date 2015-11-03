
class ShoppingList

  def initialize
    @items_in_cart = Hash.new(0)
  end

  def items(&block)
    instance_eval(&block) if block_given?    
  end

  def add(name, quantity)
    @items_in_cart[name] += quantity
  end

  def cart_items
    @items_in_cart
  end

end
class Vendor
  attr_reader :name, :inventory, :stock, :potential_revenue
  def initialize(name)
    @name = name
    @inventory = {}
  end
  def check_stock(item)
    if @inventory.keys.include?(item)
      @inventory[item]
    else
      0
    end
  end
  def stock(item, qnty)
    @inventory.merge!(item => qnty)
  end
end
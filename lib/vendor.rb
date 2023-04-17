class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end
  def check_stock(item)
    if @inventory.include?(item)
      item.count
    else
      0
    end
  end
end
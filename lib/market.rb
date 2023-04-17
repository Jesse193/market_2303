class Market
  attr_reader :name, :vendors, :potential_revenue
  def initialize(name)
    @name = name
    @vendors = []
  end
  def add_vendor(vendor)
    @vendors << vendor
  end
  def vendor_names
    names = []
    @vendors.each do |vendor|
      names << vendor.name
    end
    names
  end

  def vendors_that_sell(item)
    list = []
    vendors.each do |vendor|
      if vendor.inventory.include?(item)
        list << vendor
      end
    end
    list
  end

  def potential_revenue
    total = 0
    @inventory.map do |item|
      price = item.keys.price.gsub("$", "")
      price = price.to_f
      total += inventory.value_at(item) * price
    end
    total
  end
end
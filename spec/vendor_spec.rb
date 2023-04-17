require './lib/item'
require './lib/vendor'
RSpec.describe Vendor do
  it "Can initialize" do
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    expect(item2.name).to eq("Tomato")
    expect(item2.price).to eq("$0.50")
    vendor = Vendor.new("Rocky Mountain Fresh")
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
    expect(vendor.check_stock(item1)).to eq(0)
  end
end
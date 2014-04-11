require "./lib/vest"
require "rspec"

describe Vest do

  it 'creates a new vest with a sell in days and quality' do
    vest = Vest.new("+5 Dexterity Vest", 5, 2)
    expect(vest.name).to eq("+5 Dexterity Vest")
    expect(vest.sell_in).to eq(5)
    expect(vest.quality).to eq(2)
  end

  it 'should decrease in quality by 1 when sell in is positive' do
    vest = Vest.new("+5 Dexterity Vest", 5, 7)
    vest.update_quality()
    expect(vest.quality).to eq(6)
  end

  it 'should decrease in quality by 2 when sell in is negative' do
    vest = Vest.new("+5 Dexterity Vest", -2, 7)
    vest.update_quality()
    expect(vest.quality).to eq(5)
  end


  it 'should decrease the sell in by 1' do
    vest = Vest.new("+5 Dexterity Vest", 5, 7)
    vest.update_sell_in()
    expect(vest.sell_in).to eq(4)
  end

end

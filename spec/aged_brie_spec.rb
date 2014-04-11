require "./lib/aged_brie"
require "rspec"

describe AgedBrie do

  it 'creates a new Aged Brie with a sell in days and quality' do
    brie = AgedBrie.new("Aged Brie", 5, 2)
    expect(brie.name).to eq("Aged Brie")
    expect(brie.sell_in).to eq(5)
    expect(brie.quality).to eq(2)
  end


  it 'should increase quality by 1 when sell in is positive' do
    brie = AgedBrie.new("Aged Brie", 2, 0)
    brie.update_quality()
    expect(brie.quality).to eq(1)
  end

  it 'should increase quality by 2 when sell in is negative' do
    brie = AgedBrie.new("Aged Brie", 0, 2)
    brie.update_quality()
    expect(brie.quality).to eq(4)
  end

  it 'should never increase quality past 50' do
    brie = AgedBrie.new("Aged Brie", -20, 50)
    brie.update_quality()
    expect(brie.quality).to eq(50)
  end

  it 'should decrease sell in by 1' do
    brie = AgedBrie.new("Aged Brie", 2, 2)
    brie.update_sell_in()
    expect(brie.sell_in).to eq(1)
  end

end


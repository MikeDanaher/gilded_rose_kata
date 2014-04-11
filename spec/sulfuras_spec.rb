require "./lib/sulfuras"
require "rspec"

describe Sulfuras do

  it 'creates a new Sulfuras with the default sell in and quality' do
    sulfuras = Sulfuras.new('Sulfuras', 20, 20)
    expect(sulfuras.name).to eq("Sulfuras, Hand of Ragnaros")
    expect(sulfuras.sell_in).to eq(0)
    expect(sulfuras.quality).to eq(80)
  end

  it 'should not modify the quality' do
    sulfuras = Sulfuras.new('Sulfuras', 20, 20)
    sulfuras.update_quality()
    expect(sulfuras.quality).to eq(80)
  end

  it 'should not modify the sell in days' do
    sulfuras = Sulfuras.new('Sulfuras', 20, 20)
    sulfuras.update_sell_in()
    expect(sulfuras.sell_in).to eq(0)
  end

end

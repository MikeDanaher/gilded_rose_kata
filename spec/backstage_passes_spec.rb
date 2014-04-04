require "./lib/backstage_passes"
require "rspec"

describe BackstagePasses do

  it 'creates new passes with a sell in days and quality' do
    passes = BackstagePasses.new(5, 10)
    expect(passes.name).to eq("Backstage passes to a TAFKAL80ETC concert")
    expect(passes.sell_in).to eq(5)
    expect(passes.quality).to eq(10)
  end


  it 'increases quality by 1 when there are more than 10 days until the concert' do
    passes = BackstagePasses.new(11, 5)
    passes.update_quality()
    expect(passes.quality).to eq(6)
  end

  it 'increases quality by 2 when there are less than 10 days until the concert' do
    passes = BackstagePasses.new(9, 6)
    passes.update_quality()
    expect(passes.quality).to eq(8)
  end

  it 'increases quality by 3 when there are less than 5 days until the concert' do
    passes = BackstagePasses.new(4, 8)
    passes.update_quality()
    expect(passes.quality).to eq(11)
  end

  it 'drops quality to 0 when there are 0 days until the concert' do
    passes = BackstagePasses.new(0, 10)
    passes.update_quality()
    expect(passes.quality).to eq(0)
  end

  it 'should decrease the sell in date by 1' do
    passes = BackstagePasses.new(5, 8)
    passes.update_sell_in()
    expect(passes.sell_in).to eq(4)
  end

end

require "./lib/gilded_rose.rb"
require "rspec"

describe GildedRose do
  let(:gr) {GildedRose.new()}

  it "maintains current functionality" do
    gr.update_quality()

    expect(gr.items[0].quality).to eq(19)
    expect(gr.items[1].quality).to eq(1)
    expect(gr.items[2].quality).to eq(6)
    expect(gr.items[3].quality).to eq(80)
    expect(gr.items[4].quality).to eq(21)
    expect(gr.items[5].quality).to eq(4)
  end

  it "increases Aged Brie's quality by 2 after sell in reaches 0" do
    gr.items[1].sell_in = 0
    gr.update_quality()

    expect(gr.items[1].quality).to eq(2)
  end

  it "drops Backstage passes' quality to 0 when sell in is 0" do
    gr. items[4].sell_in = 0
    gr.update_quality()

    expect(gr.items[4].quality).to eq(0)
  end

end
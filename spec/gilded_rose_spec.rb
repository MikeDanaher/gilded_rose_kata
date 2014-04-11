require "./lib/gilded_rose"
require "rspec"

describe GildedRose do
  let(:gr) {GildedRose.new()}

  it "closes the day by updating quality and sell in values" do
    gr.closeDay()

    expect(gr.items[0].quality).to eq(19)
    expect(gr.items[1].quality).to eq(1)
    expect(gr.items[2].quality).to eq(6)
    expect(gr.items[3].quality).to eq(80)
    expect(gr.items[4].quality).to eq(21)
    expect(gr.items[5].quality).to eq(4)
  end

end

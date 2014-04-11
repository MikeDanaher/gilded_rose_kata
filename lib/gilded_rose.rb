Dir["./lib/*"].each {|file| require file }

class GildedRose

  attr_reader :items

  @items = []

  def initialize
    @items = []
    @items << Vest.new("+5 Dexterity Vest", 10, 20)
    @items << AgedBrie.new("Aged Brie", 2, 0)
    @items << Elixir.new("Elixir of the Mongoose", 5, 7)
    @items << Sulfuras.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << BackstagePasses.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Conjured.new("Conjured Mana Cake", 3, 6)
  end

  def closeDay
    @items.each do |item|
      item.update_quality()
      item.update_sell_in()
    end
  end

end

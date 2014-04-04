require './lib/item.rb'

class GildedRose

  attr_reader :items

  @items = []

  def initialize
    @items = []
    @items << Item.new("+5 Dexterity Vest", 10, 20)
    @items << Item.new("Aged Brie", 2, 0)
    @items << Item.new("Elixir of the Mongoose", 5, 7)
    @items << Item.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Item.new("Conjured Mana Cake", 3, 6)
  end

  def increase_quality_by(item, increment)
    @items[item].quality += increment
  end

  def decrease_quality_by(item, decrement)
    @items[item].quality -= decrement
  end

  def decrease_sell_in_by(item, decrement)
    @items[item].sell_in -= decrement
  end

  def itemIs(item, name)
    return @items[item].name == name
  end

  def decrease_sell_in(item)
    decrease_sell_in_by(item, 1) unless itemIs(item, "Sulfuras, Hand of Ragnaros")
  end

  def update_quality
    for i in 0..(@items.size-1)
      if (@items[i].name != "Aged Brie" && @items[i].name != "Backstage passes to a TAFKAL80ETC concert")
        if (@items[i].quality > 0)
          if (@items[i].name != "Sulfuras, Hand of Ragnaros")
            if(@items[i].name == "Conjured Mana Cake")
              decrease_quality_by(i, 2)
            else
              decrease_quality_by(i, 1)
            end
          end
        end
      else
        if (@items[i].quality < 50)
          increase_quality_by(i, 1)
          if (@items[i].name == "Backstage passes to a TAFKAL80ETC concert")
            if (@items[i].sell_in < 11)
              if (@items[i].quality < 50)
                increase_quality_by(i, 1)
              end
            end
            if (@items[i].sell_in < 6)
              if (@items[i].quality < 50)
                increase_quality_by(i, 1)
              end
            end
          end
        end
      end

      decrease_sell_in(i)

      if (@items[i].sell_in < 0)
        if (@items[i].name != "Aged Brie")
          if (@items[i].name != "Backstage passes to a TAFKAL80ETC concert")
            if (@items[i].quality > 0)
              if (@items[i].name != "Sulfuras, Hand of Ragnaros")
                decrease_quality_by(i, 1)
              end
            end
          else
            decrease_quality_by(i, @items[i].quality)
          end
        else
          if (@items[i].quality < 50)
            increase_quality_by(i, 1)
          end
        end
      end
    end
  end

end

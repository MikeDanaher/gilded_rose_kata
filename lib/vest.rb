class Vest

  attr_accessor :name, :sell_in, :quality

  def initialize(sell_in, quality)
    @name = "+5 Dexterity Vest"
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    @quality -= 1
  end

  def update_sell_in
    @sell_in -= 1
  end

end

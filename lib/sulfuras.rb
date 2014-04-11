class Sulfuras

  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = "Sulfuras, Hand of Ragnaros"
    @sell_in = 0
    @quality = 80
  end

  def update_quality
    @quality
  end

  def update_sell_in
    @sell_in
  end

end


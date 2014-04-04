class Elixir

  attr_accessor :name, :sell_in, :quality

  def initialize(sell_in, quality)
    @name = "Elixir of the Mongoose"
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


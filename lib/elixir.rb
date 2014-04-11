class Elixir

  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    if @sell_in > 0
      @quality -= 1
    else
      @quality -= 2
    end
  end

  def update_sell_in
    @sell_in -= 1
  end

end


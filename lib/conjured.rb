class Conjured

  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    if @quality > 0 && @sell_in > 0
      @quality -= 2
    elsif @quality > 0 && @sell_in <= 0
      @quality -= 4
    else
      @quality
    end
  end

  def update_sell_in
    @sell_in -= 1
  end

end


class BackstagePasses

  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    case @sell_in
    when 0 then
      @quality = 0
    when 1..5 then
      @quality += 3
    when 5..10 then
      @quality += 2
    else
      @quality += 1
    end
  end

  def update_sell_in
    @sell_in -= 1
  end

end

require "./lib/elixir"
require "rspec"

describe Elixir do

  it 'creates a new Elixir with sell in days and quality' do
    elixir = Elixir.new(5, 7)
    expect(elixir.name).to eq("Elixir of the Mongoose")
    expect(elixir.sell_in).to eq(5)
    expect(elixir.quality).to eq(7)
  end

  it 'decreases quality by 1' do
    elixir = Elixir.new(5, 7)
    elixir.update_quality()
    expect(elixir.quality).to eq(6)
  end

  it 'decreases sell in by 1' do
    elixir = Elixir.new(5, 7)
    elixir.update_sell_in()
    expect(elixir.sell_in).to eq(4)
  end

end

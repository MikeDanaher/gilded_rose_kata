require "./lib/conjured"
require "rspec"

describe Conjured do

  it 'creates a new conjured item with sell in days and quality' do
    conjured = Conjured.new('Conjured Mana Cake', 3, 6)
    expect(conjured.name).to eq('Conjured Mana Cake')
    expect(conjured.sell_in).to eq(3)
    expect(conjured.quality).to eq(6)
  end

  it 'should decrase quality by 2 when sell in days is positive' do
    conjured = Conjured.new('Conjured Mana Cake', 3, 6)
    conjured.update_quality()
    expect(conjured.quality).to eq(4)
  end

  it 'should decrase quality by 4 when sell in days is negative' do
    conjured = Conjured.new('Conjured Mana Cake', -2, 6)
    conjured.update_quality()
    expect(conjured.quality).to eq(2)
  end

  it 'should not decrase quality past 0' do
    conjured = Conjured.new('Conjured Mana Cake', 0, 0)
    conjured.update_quality()
    expect(conjured.quality).to eq(0)
  end

  it 'should decrease sell in by 1' do
    conjured = Conjured.new('Conjured Mana Cake', 3, 6)
    conjured.update_sell_in()
    expect(conjured.sell_in).to eq(2)
  end

end


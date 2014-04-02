require './lib/gilded_rose'

gr = GildedRose.new()

gr.items.each do |item|
  puts "#{item.name}, #{item.sell_in}, #{item.quality}"
end

puts ""

gr.update_quality()
gr.update_quality()
gr.update_quality()
gr.update_quality()

gr.items.each do |item|
  puts "#{item.name}, #{item.sell_in}, #{item.quality}"
end
require 'gruff'

line_chart = Gruff::Bar.new()
line_chart.labels = {0=>'Value (USD)'}
line_chart.title = "My Guitar Collection"

guitars = {"'70 Strat"=>2500.00,
"'69 Tele"=>2000.00,
"'02 Strat Squier"=>400.00}

guitars.each do |guitar, value|
  line_chart.data(guitar, value)
end

line_chart.write("guitar_chart.png")
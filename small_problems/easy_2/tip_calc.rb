puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f/100

tip = bill * tip_percentage.round(2)

total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"
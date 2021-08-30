FEET_PER_METER = 10.7639

puts "Room length in meters: "
length_meters = gets.chomp.to_f

puts "Room width in meters: "
width_meters = gets.chomp.to_f

area_meters = length_meters * width_meters

area_feet = (area_meters * FEET_PER_METER).round(2)

puts "The area of the room is #{area_meters} square meters " + \
     "(#{area_feet} square feet)."

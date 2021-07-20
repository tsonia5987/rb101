def calculate_bonus(income, get_bonus)
  bonus = 0
  bonus = income * 0.5 if get_bonus
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

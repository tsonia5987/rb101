def get_grade(g1, g2, g3)
  avg = (g1 + g2 + g3) / 3.0
  case
  when (90..100).include?(avg) then 'A'
  when (80...90).include?(avg) then 'B'
  when (70...80).include?(avg) then 'C'
  when (60...70).include?(avg) then 'D'
  else                              'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
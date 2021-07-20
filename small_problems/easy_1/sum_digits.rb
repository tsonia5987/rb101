def sum(digits)
  digits.to_s.chars.map { |c| c.to_i }.reduce { |sum, c| sum += c}
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def xor?(a, b)
  truth_count = 0
  if a
    truth_count += 1
  end
  if b
    truth_count += 1
  end
  truth_count == 1
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
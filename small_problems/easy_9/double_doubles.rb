def twice(n)
  double?(n) ? n : n * 2
end

def double?(n)
  str = n.to_s
  if str.size.even?
    middle_idx = str.size / 2
    str[0..middle_idx - 1] == str[middle_idx..-1]
  else
    false
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
puts twice(4) == 8
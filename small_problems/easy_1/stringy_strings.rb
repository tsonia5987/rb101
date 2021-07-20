def stringy(num, toggle = 1)
  str = ''
  num.times do |n|
    if n % 2 == toggle
      str += '0'
    else
      str += '1'
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(4, 0) == '0101'

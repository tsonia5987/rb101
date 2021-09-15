def string_to_integer(str)
  pow = str.size - 1
  str.chars.reduce(0) do |sum, c|
    sum += convert_to_num(c) * 10**pow
    pow -= 1
    sum
  end
end

def convert_to_num(num)
  case num
    when '0'
      0
    when '1'
      1
    when '2'
      2
    when '3'
      3
    when '4'
      4
    when '5'
      5
    when '6'
      6
    when '7'
      7
    when '8'
      8
    when '9'
      9
  end
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
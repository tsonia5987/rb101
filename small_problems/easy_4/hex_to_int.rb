HEX = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
        '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
        'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(str)
  hex_arr = str.chars.map { |c| HEX[c.upcase] }
  hex_arr.reduce(0) { |sum, num| sum * 16 + num }
end

puts hexadecimal_to_integer('4D9f') == 19871
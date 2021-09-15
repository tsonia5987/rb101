DIGITS = {
  '-' => '-', '+' => '+', '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  digits.shift if digits[0] == '+'

  negative = false
  if digits[0] == '-'
    negative = true
    digits.shift
  end

  value = digits.reduce(0) { |value, digit| 10 * value + digit }

  if negative
    value = -value
  end
  value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
           6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(num)
  return '0' if num == 0
  string = ''
  while (num > 0)
    digit = num % 10
    string = DIGITS[digit] + string
    num /= 10
  end
  string
end

def signed_integer_to_string(num)
  str = integer_to_string(num.abs)

  if num == 0
    str
  elsif num > 0
    str.prepend('+')
  else
    "-#{str}"
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
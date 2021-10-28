def center_of(str)
  len = str.size
  if len % 2 == 1
    str[len / 2]
  else
    str[len / 2 - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
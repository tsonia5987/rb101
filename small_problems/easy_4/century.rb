def century(year)
  century = year / 100 + 1
  century -= 1 if year % 10 == 0

  end_digits = (century % 100).to_s

  append = case end_digits
  when /(1\d)|(\d0)|(\d[4-9])/
    'th'
  when /\d*1/
    'st'
  when /\d*2/
    'nd'
  when /\d*3/
    'rd'
  end

  "#{century}#{append}"
  
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
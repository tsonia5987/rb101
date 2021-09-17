LINE_MAX = 80 - 4

def print_in_box(str)
  dash_line =  print_line(str, '+', '-')
  space_line = print_line(str, '|', ' ')

  puts dash_line
  puts space_line
  print_str(str)
  puts space_line
  puts dash_line
end

def print_line(str, side, middle)
  line = side
  1.upto(str.size + 2) { line += middle }
  line += side
end

def print_str(str)
  start = 0
  end_line = LINE_MAX - 1
  while end_line <= str.size - 1
    puts "| #{str[start, end_line]} |"
    start += LINE_MAX
    end_line += LINE_MAX
  end
  if start < str.size
    puts "| #{str[start, -1]}#{' ' * (LINE_MAX - (str.size - start))}"
  end
end

print_in_box("#{((0..9).to_a * 10).join}")
def print_in_box(str)
  puts print_line(str, '+', '-')
  puts print_line(str, '|', ' ')
  puts print_str(str)
  puts print_line(str, '|', ' ')
  puts print_line(str, '+', '-')
end

def print_line(str, side, middle)
  line = side
  1.upto(str.size + 2) { line += middle }
  line += side
end

def print_str(str)
  line = "| #{str} |"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
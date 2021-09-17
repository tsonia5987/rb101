def clean?(char)
  char.match?(/[a-z]/)
end

def cleanup(str)
  cleaned_str = ""
  dirty_arr = str.chars

  dirty_arr.each_index do |i|
    char = dirty_arr[i]
    if clean?(char)
      cleaned_str << char
    elsif i == dirty_arr.size - 1 || clean?(dirty_arr[i + 1])
      cleaned_str << ' '
    end
  end

  cleaned_str
end

puts cleanup("---what's my +*& line?") == ' what s my line '
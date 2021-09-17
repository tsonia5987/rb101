def crunch(str)
  new_str = ""
  str.chars.each { |c| new_str << c unless new_str[-1] == c }
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
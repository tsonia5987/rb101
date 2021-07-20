def reverse_sentence(sentence)
  arr = sentence.split
  reverse_str = ''
  idx = arr.size - 1
  while idx >= 0
    reverse_str += arr[idx]
    reverse_str += ' ' unless idx == 0
    idx -= 1
  end
  reverse_str
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

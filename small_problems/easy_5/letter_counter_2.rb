def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each { |w| sizes[size_of_word(w)] += 1 }
  sizes
end

def size_of_word(word)
  arr = word.split(/[^a-zA-Z]/)
  arr.reduce(0) { |size, w| size + w.size }
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
def swap(str)
  words = str.split
  reverse_words = words.map { |word| swap_word(word) }
  reverse_words.join(' ')
end

def swap_word(word)
  first_char = word[0]
  word[0] = word[-1]
  word[-1] = first_char
  word
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
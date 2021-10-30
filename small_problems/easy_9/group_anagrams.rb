words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams = {}

words.each do |word|
  sorted_word = word.chars.sort.to_s
  if !anagrams.include?(sorted_word)
    anagrams[sorted_word] = []
  end
  anagrams[sorted_word] << word
end

anagrams.values.each {|v| p v}

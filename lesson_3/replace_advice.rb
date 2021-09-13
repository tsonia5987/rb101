def replace(string, word, replacement)
  words = string.split
  words.each_index do |i|
    if words[i] == word
      words[i] = replacement
    end
  end
  words.join(' ')
end

def replace2(string, word, replacement)
  string.gsub(word, replacement)
end

advice = "Few things in life are as important as house training your pet dinosaur."
puts replace(advice, 'important', 'urgent')
puts replace2(advice, 'important', 'urgent')
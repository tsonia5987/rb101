def replace(string, word, replacement)
  words = string.split
  words.each_index do |i|
    if words[i] == word
      words[i] == replacement
    end
  end
  words
end

advice = "Few things in life are as important as house training your pet dinosaur."
puts replace(advice, 'important', 'urgent')

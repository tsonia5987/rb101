statement = "The Flintstones Rock"

letters = ('A'..'Z').to_a.concat(('a'..'z').to_a)

p statement.chars.each_with_object(Hash.new(0)) { |c, freq| 
  freq[c] += 1 if letters.include?(c) }
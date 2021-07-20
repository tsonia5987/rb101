def reverse_words(words)
  arr = words.split.map do |w|
    if w.size < 5
      w
    else
      w.reverse
    end
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

def palindrome?(string)
  idx = 0
  while idx < string.size / 2
    return false if string[idx] != string[string.size - 1 - idx]
    idx += 1
  end
  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
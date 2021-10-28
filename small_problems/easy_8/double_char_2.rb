CONSONANTS = ('a'..'z').to_a.delete_if {|c| 'aeiou'.include?(c)}

def double_consonants(str)
  result = ""
  str.chars.each do |c|
    if CONSONANTS.include?(c.downcase)
      result << c
    end
    result << c
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
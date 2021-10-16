def word_cap_2(str)
  str.split.map {|word| word.capitalize}.join(' ')
end

def word_cap(str)
  arr = str.split.map do |word| 
    word[0] = word[0].upcase
    word[1..-1] = word[1..-1].downcase
    word
  end
  arr.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
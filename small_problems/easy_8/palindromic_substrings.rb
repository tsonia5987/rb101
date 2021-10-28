def palindromes(str)
  palindromes = []
  all_substrings = substrings(str)
  all_substrings.each {|sub_str| palindromes << sub_str if palindrome?(sub_str)}
  palindromes
end

def palindrome?(sub_str)
  if sub_str.size == 1
    false
  else
    sub_str == sub_str.reverse
  end
end

def substrings(str)
  arr = []
  0.upto(str.size - 1).each do |idx|
    arr += leading_substrings(str, idx)
  end
  arr
end

def leading_substrings(str, start_idx)
  arr = []
  start_idx.upto(str.size - 1).each {|i| arr << str[start_idx..i]}
  arr
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
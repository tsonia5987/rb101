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

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
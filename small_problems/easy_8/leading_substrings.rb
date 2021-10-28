def leading_substrings(str)
  arr = []
  accumulator = ""
  str.chars.each do |c|
    accumulator += c
    arr << accumulator
  end
  arr
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
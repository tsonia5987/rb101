def repeat(string, num)
  if num <= 0
    puts 'enter positive integer'
  end
  num.times { puts string }
end

repeat('Hello', 3)
repeat('hi', -1)

def triangle(n)
  1.upto(n) { |i| puts "#{' '*(n-i)}#{'*'*i}"}
end

triangle(5)
triangle(9)
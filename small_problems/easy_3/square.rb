def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

def power(a, b)
  result = a
  (b - 1).times do
    result = multiply(result, a)
  end
  result
end

puts square(5) == 25
puts square(-8) == 64
puts power(2, 3) 
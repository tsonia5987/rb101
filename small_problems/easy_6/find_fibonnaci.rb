def find_fibonacci_index_by_length(length)
  first = 1
  second = 1
  fibonacci = 0
  idx = 2
  while !(is_length?(fibonacci, length))
    fibonacci = first + second
    first = second
    second = fibonacci
    idx += 1
  end
  idx
end

def is_length?(num, length)
  (num / (10**(length - 1))) >= 1
end


puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
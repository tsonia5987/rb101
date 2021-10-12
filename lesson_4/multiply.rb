def multiply(arr, operand)
  idx = 0
  loop do 
    break if idx == arr.size
    arr[idx] *= operand
    idx += 1
  end
  arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers
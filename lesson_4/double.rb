def double_numbers(numbers)
  numbers.each_index {|i| numbers[i] *= 2}
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12
p my_numbers
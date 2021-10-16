def show_multiplicative_average(arr)
  product = arr.reduce(1) {|product, e| product * e}
  result = (product / arr.size.to_f).round(3)
  puts "The result is #{format("%.3f", result)}"
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
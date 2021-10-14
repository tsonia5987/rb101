def merge(arr1, arr2)
  arr2.each { |e| arr1 << e unless arr1.include?(e) }
  arr1
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
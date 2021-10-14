def halvsies(arr)
  split = (arr.size/2.0).round
  arr1, arr2 = arr[0, split], arr[split..-1]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
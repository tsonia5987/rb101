def oddities(arr)
  new_arr = []
  arr.each_index{ |index| new_arr << arr[index] if index.even?}
  new_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
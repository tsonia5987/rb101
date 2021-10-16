def interleave(arr1, arr2)
  combined_arr = []
  idx = 0
  while idx < arr1.size
    combined_arr << arr1[idx]
    combined_arr << arr2[idx]
    idx += 1
  end
  combined_arr
end

def interleave_2(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave_2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
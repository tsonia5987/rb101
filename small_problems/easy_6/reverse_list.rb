def reverse!(arr)
  0.upto(arr.size/2 - 1) do |i|
    temp = arr[i]
    arr[i] = arr[arr.size - 1 - i]
    arr[arr.size - 1 - i] = temp
  end
  arr
end


puts list = [1,2,3,4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # trueputs 

puts list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # trueputs 

puts list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # trueputs 

puts list = []
puts reverse!(list) == [] # true
puts list == [] # true

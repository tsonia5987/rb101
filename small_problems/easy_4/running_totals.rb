=begin
def running_total(arr)
  total = 0
  arr = arr.map { |n| total += n }
end
=end

def running_total(arr)
  total = 0
  arr.reduce([]) do |arr, n| 
    total += n
    arr << total
  end
end

=begin
def running_total(arr)
  total = 0
  arr.each_with_object([]) do |n, arr| 
    total += n
    arr << total
  end
end
=end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
def include?(arr, value)
  found = false
  arr.each {|e| found = true if e == value}
  found
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false

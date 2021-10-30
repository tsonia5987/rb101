def sequence(n)
  1.upto(n).reduce([]) {|arr, i| arr << i}
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
def multiply_all_pairs(arr1, arr2)
  product_arr = []
  arr1.each do |e1|
    arr2.each do |e2|
      product_arr << e1 * e2
    end
  end
  product_arr.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
def buy_fruit(fruits)
  arr = []
  fruits.each {|fruit, quantity| quantity.times {arr << fruit}}
  arr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

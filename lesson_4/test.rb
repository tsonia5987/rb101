fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  fruits[counter] = fruits[counter] + 's'   # appends transformed string into array

  counter += 1
  break if counter == fruits.size
end

puts fruits # => ["apples", "bananas", "pears"]
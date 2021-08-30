puts ">> Please enter an integer greater than 0: "
num = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product. "
choice = gets.chomp

if choice == 's'
  sum = (1..num).sum
  puts "The sum of the intergers between 1 and #{num} is #{sum}."
else
  product = (1..num).reduce { |p, n| p * n }
  puts "The prodcut of the integers between 1 and #{num} is #{product}."
end
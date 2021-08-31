prompt_count = %w{1st, 2nd, 3rd, 4th, 5th, last}

input_array = []

prompt_count.each { |count| 
  puts "==> Enter the #{count} number: "
  input_array << gets.chomp.to_i
}

last_num = input_array.last

if input_array[..-2].include?(last_num)
  puts "The number #{last_num} appears in #{input_array}."
else
  puts "The number #{last_num} does not appear in #{input_array}."
end

puts "Please write word or multiple words: "
words = gets.chomp

words_arr = words.split

num_chars = 0
words_arr.each { |word| num_chars += word.size }

puts %Q[There are #{num_chars} characters in "#{words}".]
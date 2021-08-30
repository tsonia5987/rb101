puts "What is your name? "
name = gets.chomp

if name[-1] == '!'
	puts "HELLO #{name.chop.upcase}."
else
	puts "Hello #{name}."
end

CURR_YEAR = Time.now.year

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
age_retire = gets.to_i

years_left = age_retire - age

year_retire = CURR_YEAR + years_left

puts "It's #{CURR_YEAR}. You will retire in #{year_retire}.
You have only #{years_left} years of work to go!"
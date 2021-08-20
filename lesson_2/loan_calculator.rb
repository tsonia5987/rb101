def valid_num?(num)
  num.to_f.to_s == num || valid_int?(num)
end

def valid_int?(num)
  Integer(num) rescue nil
end

puts "Welcome to the loan calculator."
loop do
  loan_amount = ''
  loop do
    puts "Enter loan amount: "
    loan_amount = gets.chomp
    break if valid_num?(loan_amount)
    puts "Not a valid number. Try again."
  end
  loan_amount = loan_amount.to_f

  puts "Enter APR as percentage: "
  apr = gets.to_f / 100
  puts "Enter loan duration in years: "
  loan_duration_years = gets.to_f

  monthly_rate = apr / 12
  loan_durations_months = loan_duration_years * 12
  monthly_payment = loan_amount * (monthly_rate /
                    (1 - (1 + monthly_rate)**(-loan_durations_months)))
  monthly_payment = monthly_payment.round(2)
  puts "Your monthly payment is #{monthly_payment}"
  puts "Do you want to calculate again? (Y/n)"
  again = gets.chomp.downcase
  break if again != 'y'
end

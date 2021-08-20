require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
#puts MESSAGES.inspect

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num ? true: false
end

def operation_to_method(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt MESSAGES['welcome']
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt MESSAGES['valid_name']
  else break
  end
end

prompt MESSAGES['greet'] + name

loop do
  number1 = ''
  loop do
    prompt MESSAGES['num1_ask']
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt MESSAGES['not_valid_num']
    end
  end

  number2 = ''
  loop do
    prompt MESSAGES['num2_ask']
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt MESSAGES['not_valid_num']
    end
  end

  prompt MESSAGES['operator_prompt']

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include? operator
      break
    else
      prompt MESSAGES['not_valid_op']
    end
  end

  prompt operation_to_method(operator) + MESSAGES['calculating'] 
  result = case operator
           when '1' then number1.to_i + number2.to_i
           when '2' then number1.to_i - number2.to_i
           when '3' then number1.to_i * number2.to_i
           when '4' then number1.to_f / number2.to_f
           end

  prompt = MESSAGES['result'] + result
  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Thank you for using the calculator. Bye!"

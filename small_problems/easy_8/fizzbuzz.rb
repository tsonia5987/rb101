def fizzbuzz(start_num, end_num)
  arr = []
  start_num.upto(end_num).each do |n|
    arr << fizzbuzz_val(n)
  end
  arr.join(",")
end

def fizzbuzz_val(n)
  case
  when n % 3 == 0 && n % 5 == 0
    "FizzBuzz"
  when n % 3 == 0
    "Fizz"
  when n % 5 == 0
    "Buzz"
  else
    n
  end
end
      

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
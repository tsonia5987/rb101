=begin
def multisum(num)
  sum = 0
  (num + 1).times do |i|
    if i % 3 == 0
      sum += i
    elsif i % 5 == 0
      sum += i
    end
  end
  sum
end
=end

def multisum(num)
  1.upto(num).inject(0) do |sum, n| 
    if (n % 3 == 0 || n % 5 == 0)
      sum + n
    else
      sum 
    end
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
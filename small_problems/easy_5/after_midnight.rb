def time_of_day(time)
  hours, min = time.divmod(60)
  hours = hours % 24
  
  time = "#{add_zeroes(hours)}:#{add_zeroes(min)}"
end

def add_zeroes(time)
  if time < 10
    time = "0#{time}"
  else
    time = "#{time}"
  end
    
end


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
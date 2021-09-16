MINUTES_IN_DAY = 60 * 24

def after_midnight(time)
  hour, min = time.split(':')
  hour = str_to_int(hour)
  min = str_to_int(min)
  
  hour %= 24
  hour * 60 + min
end

def str_to_int(str)
  (str[0].ord - '0'.ord) * 10 + str[1].ord - '0'.ord
end
def before_midnight(time)
  (MINUTES_IN_DAY - after_midnight(time)) % MINUTES_IN_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
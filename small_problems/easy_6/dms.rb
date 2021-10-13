DEGREE = "\xC2\xB0"

def dms(angle)
  degree = "#{(angle % 360).to_i}#{DEGREE}"
  hour = remainder_angle(angle)
  minute = remainder_angle(hour)

  %(#{degree}#{to_str(hour)}'#{to_str(minute)}")
end

def remainder_angle(number)
  quo, rem = number.divmod(1)
  remainder = (rem * 60)
end

def to_str(number)
  number = number.to_i
  if number < 10
    number = %(0#{number})
  else
    number = %(#{number})  
  end
end

puts dms(254.6)
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
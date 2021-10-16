def swapcase(str)
  swapped_arr = str.chars.map do |c|
                  if c =~ /[a-z]/
                    c.upcase
                  elsif c =~ /[A-Z]/
                    c.downcase
                  else
                    c
                  end
                end
  swapped_arr.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
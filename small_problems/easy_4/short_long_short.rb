def short_long_short(a, b)
  long = nil
  short = nil
  if a.size > b.size
    long = a
    short = b
  else
    long = b
    short = a
  end

  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

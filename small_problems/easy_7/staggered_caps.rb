def staggered_case(str)
  new_str = ''
  str.chars.each_with_index {|c, i| new_str += i.even? ? c.upcase : c.downcase}
  new_str
end


puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
def staggered_case(str)
  caps = true
  new_str = ''
  str.chars.each do |c|
    if c =~ /[A-Za-z]/
      if caps
        new_str += c.upcase
      else
        new_str += c.downcase
      end
      caps = !caps
    else
      new_str += c
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
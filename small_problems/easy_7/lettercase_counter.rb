LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(str)
  arr = str.chars
  count_hash = {}

  count_hash[:lowercase] = arr.count {|c| LOWERCASE.include?(c)}
  count_hash[:uppercase] = arr.count {|c| UPPERCASE.include?(c)}
  count_hash[:neither] = arr.size - count_hash[:lowercase] - count_hash[:uppercase]
  
  count_hash
end


puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
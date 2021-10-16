VOWELS = "AEIOUaeiou"

def remove_vowels(str_arr)
  str_arr.map do |str|
    no_vowels_str = ""
    str.chars.each do |c|
      no_vowels_str += c unless VOWELS.include?(c) 
    end
    no_vowels_str
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = %(A, E, I, O, U, a, e, i, o, u)

hsh.each {|_, arr| arr.each {|str| str.chars.each{|c| p c if VOWELS.include?(c)}}}
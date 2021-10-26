arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort {|str1, str2| str2.to_i <=> str1.to_i}
p new_arr
p arr
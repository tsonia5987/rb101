arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p arr.select {|hsh| hsh.all? {|k, v_arr| v_arr.all?{|n| n.even?}}}
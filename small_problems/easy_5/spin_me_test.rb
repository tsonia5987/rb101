def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id
reverse = spin_me(arr)
puts reverse.object_id
puts reverse
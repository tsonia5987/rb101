def titleize(str)
  arr = str.split.map do |w|
    w[0] = w[0].upcase
    w
  end
  arr.join(" ")
end

words = "the flintstones rock"
p titleize(words)

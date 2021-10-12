flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}
flintstones.size.times do |i|
  flint_hash[flintstones[i]] = i
end
puts flint_hash
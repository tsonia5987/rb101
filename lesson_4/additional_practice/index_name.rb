flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
idx_match = -1
flintstones.each_with_index { |name, i| idx_match = i if name[0..1] == "Be" }
puts idx_match
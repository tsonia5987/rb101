def count_occurrences(vehicles)
  occurrences = {}
  vehicles.each do |v|
    v = v.downcase
    occurrences[v] = 0 if !occurrences[v]
    occurrences[v] += 1
  end
  occurrences.each { |v, o| puts "#{v} => #{o}" }
end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

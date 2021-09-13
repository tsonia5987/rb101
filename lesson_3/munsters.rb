def convert(munsters_description)
  munsters_description_upcase = munsters_description.upcase
  munsters_description_upcase[0] = 't'
  munsters_description_upcase[4] = 'm'
  munsters_description_upcase
end

munsters_description = "The Munsters are creepy in a good way."

puts convert(munsters_description)
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase
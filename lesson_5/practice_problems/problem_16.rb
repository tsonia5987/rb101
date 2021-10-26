CHARACTERS = ('a'..'z').to_a + ('1'..'9').to_a

def create_UUID
  "#{create_section(8)}#{('-'+create_section(4))*3}-#{create_section(12)}"
end

def create_section(n)
  str = ""
  n.times {str += CHARACTERS[rand(CHARACTERS.size)]}
  str
end

p create_UUID


